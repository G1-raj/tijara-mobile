import 'package:tijara/models/auth/token_model.dart';
import 'package:tijara/models/user/user_model.dart';

class AuthModel {
  final bool success;
  final DataModel data;

  AuthModel(
    {
      required this.success,
      required this.data
    }
  );

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      success: json["success"],
      data: DataModel.fromJson(json["data"])
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "success": success,
      "data": data.toJson()
    };
  }
}

class DataModel {
  final TokenModel tokens;
  final UserModel user;

  DataModel(
    {
      required this.tokens,
      required this.user
    }
  );

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      tokens: TokenModel.fromJson(json["tokens"]),
      user: UserModel.fromJson(json["user"])
    );
  }

  Map<String, dynamic>  toJson() {
    return {
      "tokens": tokens.toJson(),
      "user": user.toJson()
    };
  }
}