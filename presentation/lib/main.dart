import 'package:chat/routes/app_pages.dart';
import 'package:chat/utils/localization/locale_loader.dart';
import 'package:data/di/data_injection_container.dart' as data_injection;
import 'package:domain/core/errors/failure.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;
import 'package:domain/modules/websocket/usecases/start_websocket_usecase.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'constants/resources/help_functions.dart';
import 'controllers/main_controller.dart';
import 'initial_binding.dart';
import 'modules/root/controllers/root_controller.dart';
import 'permanent_binding.dart';

late SharedPreferences sharedPreferences;

Future<void> main() async {
  await FlutterLibphonenumber().init();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) async {
    await domain_injection.init();
    await data_injection.init(onError: (error) {
      if (error is ServerFailure) {
        showErrorSnackBar(error.errorObject);
      }
    });
    await PermanentBinding().dependencies(); //
    sharedPreferences = await SharedPreferences.getInstance();
    RootController controller = Get.find();
    await controller.getCurrentSession();


    runApp(
      EasyLocalization(
        assetLoader: CustomAssetLoader(),
        supportedLocales: const [Locale('en', 'US'), Locale('de', 'DE')],
        path: 'res/locales',
        // <-- change the path of the translation files
        fallbackLocale: const Locale('en', 'US'),
        child: const MyApp(),
      ),
    );
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  bool isLogged = false;

  @override
  void initState() {
    Get.put(MainController());
    RootController controller = Get.find();
    isLogged = sharedPreferences.getString('access') != null ? true : false;

    WidgetsBinding.instance.addObserver(this);
    final Brightness? brightness = WidgetsBinding.instance.window.platformBrightness;
    if (brightness != null) {
      MainController mainController = Get.find();
      mainController.changeThemeMode(brightness);
    }
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.find();
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Obx(
                () => Theme(
              data: mainController.isDarkMode.value ? ThemeData.dark() : ThemeData.light(),
              child: GetCupertinoApp(
                  debugShowCheckedModeBanner: false,
                  smartManagement: SmartManagement.full,
                  supportedLocales:  context.supportedLocales,
                  localizationsDelegates: context.localizationDelegates,
                  locale: context.locale,
                  defaultTransition: Transition.cupertino,
                  initialBinding: InitialBinding(),
                  title: "Application",
                  getPages: AppPages.routes,
                initialRoute: isLogged ? AppPages.FEED : AppPages.LOGIN,
              )
                  // initialRoute: isLogged ? AppPages.MENU : AppPages.LOGIN),
            ),
          );
        });
  }

  @override
  void didChangePlatformBrightness() {
    if (mounted) {
      final Brightness? brightness = WidgetsBinding.instance.window.platformBrightness;
      if (brightness != null) {
        MainController mainController = Get.find();
        mainController.changeThemeMode(brightness);

      }
    }


    super.didChangePlatformBrightness();
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }
}
