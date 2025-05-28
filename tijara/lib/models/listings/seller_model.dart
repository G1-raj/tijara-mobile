class SellerModel {
  final String? id;
  final String? username;
  final String profilePicture;

  SellerModel(
    {
      required this.id,
      required this.profilePicture,
      required this.username
    }
  );

  factory SellerModel.fromJson(Map<String, dynamic> json){ 
      return SellerModel(
          id: json["id"],
          username: json["username"],
          profilePicture: json["profilePicture"],
      );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "username": username,
      "profilePicture": profilePicture,
    };
  }

  @override
  String toString(){
      return "$id, $username, $profilePicture, ";
  }
}