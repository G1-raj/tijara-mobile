import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/models/auth/auth_model.dart';
import 'package:tijara/models/error_model.dart';
import 'package:tijara/models/response_model.dart';
import 'package:tijara/models/success_model.dart';

class AuthServices {

  final Dio _dio = Dio();

  Future<ResponseModel> loginService(String email, String password) async {
    try {

      var response = await _dio.post(loginRoute, data: jsonEncode({
        "email": email,
        "password": password
      }));

      if(response.statusCode != 200) {
        return ResponseModel.error(ErrorModel.fromJson(response.data));
      }

      return ResponseModel.success(SuccessModel(
        // success: response.data["success"],
        data: AuthModel.fromJson(response.data)
      ));
      
    } catch (e) {
      throw Exception("Failed to login error is in login service and error is: $e");
    }

  }

  Future<void> registerService() async {

  }

  Future<void> verifyCodeService() async {

  }

  Future<void> changePassowrdVerifyTokenService() async {

  }

  Future<void> changePasswordService() async {

  }

  Future<void> refreshTokenService() async {

  }

  Future<void> verifyTokenSerice() async {

  }

  Future<void>  resendVerificationCodeService() async {

  }

  Future<void>  getUserProfileService() async {

  }

  Future<void> logoutService() async {

  }
}