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
      final response = await _dio.post(
        loginRoute,
        data: {
          "email": email,
          "password": password,
        },
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );

      return ResponseModel.success(
        SuccessModel(
          data: AuthModel.fromJson(response.data),
        ),
      );
    } on DioException catch (e) {
      if (e.response != null && e.response?.data != null) {
        try {
          // Parse backend error to ErrorModel
          final errorModel = ErrorModel.fromJson(e.response!.data);
          return ResponseModel.error(errorModel);
        } catch (_) {
          // Fallback if parsing fails
          return ResponseModel.error(ErrorModel(
            success: false,
            error: ApiError(
              code: e.response?.statusCode.toString() ?? "unknown_error",
              message: "An unknown error occurred",
            ),
          ));
        }
      } else {
        return ResponseModel.error(ErrorModel(
          success: false,
          error: ApiError(
            code: "network_error",
            message: "No response from server",
          ),
        ));
      }
    } catch (e) {
      return ResponseModel.error(ErrorModel(
        success: false,
        error: ApiError(
          code: "unexpected_error",
          message: "Unexpected error: $e",
        ),
      ));
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