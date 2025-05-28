import 'package:dio/dio.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/models/profile/profile_success_response_model.dart';
import 'package:tijara/models/response_model.dart';
import 'package:tijara/models/success_model.dart';

class UserServices {
  final Dio _dio = Dio();

  Future<ResponseModel> getUserProfileService(String id) async {
    try {

      var repsonse = await _dio.get(userProfileRoute(id));

      return ResponseModel.success(
        SuccessModel(data: ProfileSuccessResponseModel.fromJson(repsonse.data))
      );
      
    } catch (e) {
      throw Exception("Faile to fetch user proile error is in get user profile service and error is: $e");
    }
  }
}