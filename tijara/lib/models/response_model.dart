import 'package:tijara/models/error_model.dart';
import 'package:tijara/models/success_model.dart';

class ResponseModel {

  final bool isSuccess;
  final SuccessModel? successResponse;
  final ErrorModel? errorResponse;

  ResponseModel.success(this.successResponse) : isSuccess = true, errorResponse = null;
  ResponseModel.error(this.errorResponse) : isSuccess = false, successResponse = null;

}