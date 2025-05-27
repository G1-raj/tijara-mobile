import 'package:get/get.dart';
import 'package:flutter/material.dart';

void showCustomSnackbar(String message, bool isError) {
  Get.snackbar(
    isError ? 'Error' : 'Success',
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: isError ? Colors.red : Colors.green,
    colorText: Colors.white,
    margin: const EdgeInsets.all(16),
    borderRadius: 10,
    duration: const Duration(seconds: 3),
  );
}
