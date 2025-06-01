import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectivityController extends GetxController {
  var isConnected = false.obs;

  @override
  void onInit() {
    super.onInit();
    
    checkConnectivity();

    Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> result) {
      _updateConnectivity(result.first);
    });
  }


  Future<void> checkConnectivity() async {
    List<ConnectivityResult> result = await Connectivity().checkConnectivity();
    _updateConnectivity(result.isNotEmpty ? result.first : ConnectivityResult.none);
  }

  void _updateConnectivity(ConnectivityResult result) {
    bool newConnectionState = result != ConnectivityResult.none;

    if (isConnected.value != newConnectionState) {
      isConnected.value = newConnectionState;
    }
  }
}