import 'package:get/get.dart';
import 'package:tijara/services/auth_services.dart';

class AuthController extends GetxController {
  RxString message = "".obs;
  Future<void> loginController() async {
    try {

      var result = await AuthServices().loginService("daryannabo16@gmail.com", "123321Dn");

      if(!result.isSuccess) {
        message.value = "Their is error";
      }

      message.value ="its success";
      
    } catch (e) {
      print("Error in controller and error is: $e");
    }
  }
}