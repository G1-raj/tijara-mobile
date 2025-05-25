class ErrorModel {
  final bool success;
  final ApiError error;

  ErrorModel(
    {
      required this.success,
      required this.error
    }
  );

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      success: json["success"],
      error: ApiError.fromJson(json["error"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "success": success,
      "error": error.toJson()
    };
  }
}

class ApiError {
  final String code;
  final String message;

  ApiError(
    {
      required this.code,
      required this.message
    }
  );

  factory ApiError.fromJson(Map<String, dynamic> json) {
    return ApiError(
      code: json["code"],
      message: json["message"]
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "code": code,
      "message": message
    };
  }
}