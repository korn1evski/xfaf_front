import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class InternetConnectionController extends GetxController {
  StreamSubscription? _streamSubscription;
  var isConnected = true.obs;

  @override
  void onInit() {
    super.onInit();
    _initCheckConnection();
    _addListener();
  }

  @override
  void onClose() {
    super.onClose();
    _disposeListener();
  }

  void _initCheckConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      // I am connected to a mobile network.
      isConnected.value = false;
    } else {
      isConnected.value = true;
    }
  }

  void _addListener() {
    _streamSubscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult connectivityResult) {
      // Got a new connectivity status!
      if (connectivityResult == ConnectivityResult.none) {
        // I am connected to a mobile network.
        isConnected.value = false;
      } else {
        isConnected.value = true;
      }
    });
  }

  void _disposeListener() {
    _streamSubscription?.cancel();
  }
}
