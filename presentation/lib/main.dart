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
import 'package:chat/controllers/main_controller.dart';
import 'package:chat/modules/main/menu/views/menu_page.dart';
import 'package:chat/modules/root/controllers/root_controller.dart';
import 'package:chat/permanent_binding.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:chat/utils/localization/locale_loader.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'constants/resources/help_functions.dart';
import 'initial_binding.dart';

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
    super.initState();
    Get.put(MainController());
    RootController controller = Get.find();
    isLogged = controller.currentUserEntity.value != null;

    isLogged ? domain_injection.sl<StartWebSocketUseCase>().call() : null;

    WidgetsBinding.instance.addObserver(this);
    final Brightness? brightness = WidgetsBinding.instance.window.platformBrightness;
    if (brightness != null) {
      MainController mainController = Get.find();
      mainController.changeThemeMode(brightness);
    }
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
                  // theme: ThemeData(
                  //   // Define the default brightness and colors.
                  //   brightness: Brightness.light,
                  //   primaryColor: Colors.lightBlue[800],
                  //
                  //   // Define the default font family.
                  //   fontFamily: 'INTER',
                  //
                  //   // Define the default `TextTheme`. Use this to specify the default
                  //   // text styling for headlines, titles, bodies of text, and more.
                  //   textTheme: const TextTheme(),
                  // ),
                  initialRoute: isLogged ? AppPages.MENU : AppPages.LOGIN),
            ),
          );
          // isLogged ? AppPages.MENU : AppPages.WELCOME
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
