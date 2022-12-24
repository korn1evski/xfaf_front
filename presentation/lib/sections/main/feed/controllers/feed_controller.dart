import 'package:chat/constants/resources/help_functions.dart';
import 'package:chat/entities/orphanage_entity.dart';
import 'package:dio/dio.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../constants/new_constants.dart';
import '../../../../general/error_snack.dart';

class FeedController extends GetxController {

  Rx<bool> isLoading = false.obs;
  Rx<String> country = ''.obs;
  RxList<OrphanageEntity> entities = RxList();
  final Dio dio = Dio();
  late SharedPreferences prefs;

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  void onInit() async{
    setIsLoading(isLoading);
    Position res = await determinePosition();
    List<Placemark> placemarks = await placemarkFromCoordinates(
      res.latitude,
      res.longitude,
    );
    country.value = placemarks[0].locality!;

    prefs = await SharedPreferences.getInstance();

    try{
      final response = await dio.post(NewConstants.mainUrl + 'get-orphan-building', data: {
        'access_token' : prefs.getString('access'),
        'location' : country.value.toLowerCase()
      });
      setIsLoading(isLoading);
      entities.value = List<OrphanageEntity>.from(response.data['data']['orphanBuildings'].map((model) => OrphanageEntity.fromJson(model)));
      print(entities.value);
    } catch(e){
      if(e is DioError) {
        snack(e.response!.data['message']);
        setIsLoading(isLoading);
      }
    }
  }
}