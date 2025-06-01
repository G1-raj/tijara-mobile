import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/controllers/auth_controller.dart';
import 'package:tijara/controllers/connectivity_controller.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {


  final ConnectivityController _connectivityController = Get.put(ConnectivityController());
  final AuthController _authController = Get.put(AuthController());

  @override
  void initState() {
    super.initState();

    _connectivityController.checkConnectivity();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if(_connectivityController.isConnected.value) {

          Future.delayed(Duration(seconds: 1), () {
            if(_authController.isLoggedIn.value) {
              Get.offAllNamed('/home_screen_route');
            } else {
              Get.offAllNamed('login_route');
            }
          });



          return Center(
            child: CircularProgressIndicator(
              // backgroundColor: blueColor,
            ),
          );

        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No internet connection'),
                ElevatedButton(
                  onPressed: () {
                    _connectivityController.checkConnectivity(); 
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: blueColor
                  ),
                  child: Text('Retry', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: whiteColor
                  ),),
                ),
              ],
            ),
          );
        }
      })
    );
  }
}