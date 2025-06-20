import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:tijara/models/auth/auth_model.dart';
import 'package:tijara/models/user/user_model.dart';
import 'package:tijara/services/auth_services.dart';
import 'package:tijara/widgets/custom_snackbar/custom_snackbar.dart';
import 'package:tijara/widgets/loading_dialog/loading_dialog.dart';

class AuthController extends GetxController {

  RxBool isLoggedIn = false.obs;
  RxString message = "".obs;
  final RxString accessToken = "".obs;
  var user = Rxn<UserModel>();
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  @override
  void onInit() {
    super.onInit();

    checkLoginStatus();


  }

  Future<void> checkLoginStatus() async {
    var tokenValue = await _storage.read(key: "tijara_access_token");
    var userValue = await _storage.read(key: "tijara_user_data");

    if(tokenValue != null && userValue != null) {

      accessToken.value = tokenValue;
      user.value = UserModel.fromJson(jsonDecode(userValue));

      isLoggedIn.value = true;

    } else {
      isLoggedIn.value = false;
    }
  }


  Future<void> loginController(String email, String password) async {
    try {

      isLoggedIn(false);

      loadingDialog("Autehnticating....");

      var result = await AuthServices().loginService(email, password);

      Get.back();

      print("Failed to login because: ${result.errorResponse!.error.message}");

      if(result.isSuccess) {
        final data = result.successResponse!.data as AuthModel;


        user.value = data.data.user;
        accessToken.value = data.data.tokens.accessToken;

        if(user.value == null) {
          isLoggedIn(false);
          showCustomSnackbar("User is not present", true);
        }

        if(user.value != null) {
          await _storage.write(key: "tijara_user_data", value: jsonEncode(user.value!.toJson()));
          await _storage.write(key: "tijara_access_token", value: accessToken.value);
        }


        Get.offAllNamed('/home_screen_route');



        isLoggedIn(true);

        return;
      }

      showCustomSnackbar("Failed to login", true);

      
      
    } catch (e) {
      throw Exception("Failed to login user and error is in login controller and error is: $e");
    }
  }

  Future<void> logOutController() async {
    try {

      await _storage.delete(key: "tijara_user_data");
      await _storage.delete(key: "tijara_access_token");
      await _storage.deleteAll();

      user.value = null;
      accessToken.value = "";

      Get.offAllNamed('login_route');

      showCustomSnackbar("Log out successful", true);
      
    } catch (e) {
      throw Exception("Failed to logout user and error is in controller and error is: $e");
    }
  }
}