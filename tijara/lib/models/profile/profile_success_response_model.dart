import 'package:tijara/models/profile/data_model.dart';

class ProfileSuccessResponseModel {
  final bool? success;
  final DataModel? data;
  final int? status;
  final String? error;

  ProfileSuccessResponseModel(
    {
      required this.success,
      required this.data,
      required this.status,
      required this.error
    }
  );

  factory ProfileSuccessResponseModel.fromJson(Map<String, dynamic> json){ 
      return ProfileSuccessResponseModel(
          success: json["success"],
          data: json["data"] == null ? null : DataModel.fromJson(json["data"]),
          status: json["status"],
          error: json["error"]
      );
  }

  Map<String, dynamic> toJson() {
    return {
      "success": success,
      "data": data?.toJson(),
      "status": status,
      "error": error
    };
  }

  @override
  String toString(){
      return "$success, $data, $status, $error";
  }
}