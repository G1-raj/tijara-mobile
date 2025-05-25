import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/controllers/auth_controller.dart';

class DummyView extends StatelessWidget {
  DummyView({super.key});

  final AuthController _auth = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () {
                  return Text("Response is: ${_auth.message}");
                }
              ),

              const SizedBox(height: 28,),

              ElevatedButton(
                onPressed: () {
                  _auth.loginController();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text("Get response"),
              )
            ],
          ),
        ),
      ),
    );
  }
}