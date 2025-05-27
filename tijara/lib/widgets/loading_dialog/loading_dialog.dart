import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';

void loadingDialog(String message) {
  Get.dialog(
    Center(
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: Get.size.width * 0.6,
          height: Get.size.height * 0.2,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: whiteColor, 
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(color: blueColor),
              const SizedBox(height: 16),
              Text(
                message,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    ),
    barrierDismissible: false,
  );
}