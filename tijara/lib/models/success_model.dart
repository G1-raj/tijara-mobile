class SuccessModel {
  // final bool success;
  final dynamic data;

  SuccessModel(
    {
      // required this.success,
      required this.data
    }
  );

  factory SuccessModel.fromJson(Map<String, dynamic> json) {
    return SuccessModel(
      // success: json["success"],
      data: json["data"]
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // "success": success,
      "data": data
    };
  }
}