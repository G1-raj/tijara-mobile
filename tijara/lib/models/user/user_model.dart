class UserModel {
  final String id;
  final String email;
  final String username;
  final String role;
  final String createdAt;
  final String updatedAt;
  final String? phone;
  final String? profilePicture;
  final String? bio;
  final String? name;
  final String? dateOfBirth;
  final String? street;
  final String? city;
  final bool allowMessaging;
  final bool listingNotifications;
  final bool messageNotifications;
  final bool showEmail;
  final bool showOnlineStatus;
  final bool showPhoneNumber;

  UserModel(
    {
      required this.id,
      required this.email,
      required this.username,
      required this.role,
      required this.createdAt,
      required this.updatedAt,
      required this.phone,
      required this.profilePicture,
      required this.bio,
      required this.name,
      required this.dateOfBirth,
      required this.street,
      required this.city,
      required this.allowMessaging,
      required this.listingNotifications,
      required this.messageNotifications,
      required this.showEmail,
      required this.showOnlineStatus,
      required this.showPhoneNumber,
    }
  );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      email: json["email"],
      username: json["username"],
      role: json["role"],
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
      phone: json["phone"],
      profilePicture: json["profilePicture"],
      bio: json["bio"],
      name: json["name"],
      dateOfBirth: json["dateOfBirth"],
      street: json["street"],
      city: json["city"],
      allowMessaging: json["allowMessaging"],
      listingNotifications: json["listingNotifications"],
      messageNotifications: json["messageNotifications"],
      showEmail: json["showEmail"],
      showOnlineStatus: json["showOnlineStatus"],
      showPhoneNumber: json["showPhoneNumber"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "email": email,
      "username": username,
      "role": role,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
      "phone": phone,
      "profilePicture": profilePicture,
      "bio": bio,
      "name": name,
      "dateOfBirth": dateOfBirth,
      "street": street,
      "city": city,
      "allowMessaging": allowMessaging,
      "listingNotifications": listingNotifications,
      "messageNotifications": messageNotifications,
      "showEmail": showEmail,
      "showOnlineStatus": showOnlineStatus,
      "showPhoneNumber": showPhoneNumber,
    };
  }

  @override
  String toString(){
      return "$id, $email, $username, $role, $createdAt, $updatedAt, $phone, $profilePicture, $bio, $name, $dateOfBirth, $street, $city, $allowMessaging, $listingNotifications, $messageNotifications, $showEmail, $showOnlineStatus, $showPhoneNumber, ";
  }
}