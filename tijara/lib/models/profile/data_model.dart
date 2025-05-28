import 'package:tijara/models/profile/listing_model.dart';

class DataModel {
  final String? id;
  final String? email;
  final String? name;
  final String? username;
  final String? password;
  final dynamic profilePicture;
  final dynamic bio;
  final dynamic location;
  final String createdAt;
  final String updatedAt;
  final String? role;
  final dynamic preferences;
  final dynamic city;
  final dynamic dateOfBirth;
  final dynamic street;
  final String? refreshToken;
  final String? refreshTokenExpiresAt;
  final dynamic phone;
  final bool? emailVerified;
  final String? lastVerifiedAt;
  final dynamic verificationToken;
  final dynamic verificationCode;
  final String? verificationTokenExpires;
  final String? accountStatus;
  final bool? allowMessaging;
  final bool? listingNotifications;
  final bool? messageNotifications;
  final bool? showEmail;
  final bool? showOnlineStatus;
  final bool? showPhoneNumber;
  final List<ListingModel> listings;

  DataModel(
    {
      required this.id,
      required this.email,
      required this.name,
      required this.username,
      required this.password,
      required this.profilePicture,
      required this.bio,
      required this.location,
      required this.createdAt,
      required this.updatedAt,
      required this.role,
      required this.preferences,
      required this.city,
      required this.dateOfBirth,
      required this.street,
      required this.refreshToken,
      required this.refreshTokenExpiresAt,
      required this.phone,
      required this.emailVerified,
      required this.lastVerifiedAt,
      required this.verificationToken,
      required this.verificationCode,
      required this.verificationTokenExpires,
      required this.accountStatus,
      required this.allowMessaging,
      required this.listingNotifications,
      required this.messageNotifications,
      required this.showEmail,
      required this.showOnlineStatus,
      required this.showPhoneNumber,
      required this.listings,
    }
  );

  factory DataModel.fromJson(Map<String, dynamic> json){ 
      return DataModel(
          id: json["id"],
          email: json["email"],
          name: json["name"],
          username: json["username"],
          password: json["password"],
          profilePicture: json["profilePicture"],
          bio: json["bio"],
          location: json["location"],
          createdAt: json["createdAt"],
          updatedAt: json["updatedAt"],
          role: json["role"],
          preferences: json["preferences"],
          city: json["city"],
          dateOfBirth: json["dateOfBirth"],
          street: json["street"],
          refreshToken: json["refreshToken"],
          refreshTokenExpiresAt: json["refreshTokenExpiresAt"],
          phone: json["phone"],
          emailVerified: json["emailVerified"],
          lastVerifiedAt:json["lastVerifiedAt"],
          verificationToken: json["verificationToken"],
          verificationCode: json["verificationCode"],
          verificationTokenExpires: json["verificationTokenExpires"],
          accountStatus: json["accountStatus"],
          allowMessaging: json["allowMessaging"],
          listingNotifications: json["listingNotifications"],
          messageNotifications: json["messageNotifications"],
          showEmail: json["showEmail"],
          showOnlineStatus: json["showOnlineStatus"],
          showPhoneNumber: json["showPhoneNumber"],
          listings: json["listings"] == null ? [] : List<ListingModel>.from(json["listings"]!.map((x) => ListingModel.fromJson(x))),
      );
  }

  Map<String, dynamic> toJson() {

    return {
      "id": id,
      "email": email,
      "name": name,
      "username": username,
      "password": password,
      "profilePicture": profilePicture,
      "bio": bio,
      "location": location,
      "createdAt": createdAt,
      "updatedAt": updatedAt,
      "role": role,
      "preferences": preferences,
      "city": city,
      "dateOfBirth": dateOfBirth,
      "street": street,
      "refreshToken": refreshToken,
      "refreshTokenExpiresAt": refreshTokenExpiresAt,
      "phone": phone,
      "emailVerified": emailVerified,
      "lastVerifiedAt": lastVerifiedAt,
      "verificationToken": verificationToken,
      "verificationCode": verificationCode,
      "verificationTokenExpires": verificationTokenExpires,
      "accountStatus": accountStatus,
      "allowMessaging": allowMessaging,
      "listingNotifications": listingNotifications,
      "messageNotifications": messageNotifications,
      "showEmail": showEmail,
      "showOnlineStatus": showOnlineStatus,
      "showPhoneNumber": showPhoneNumber,
      "listings": listings.map((x) => x.toJson()).toList(),
    };
  }

  @override
  String toString(){
      return "$id, $email, $name, $username, $password, $profilePicture, $bio, $location, $createdAt, $updatedAt, $role, $preferences, $city, $dateOfBirth, $street, $refreshToken, $refreshTokenExpiresAt, $phone, $emailVerified, $lastVerifiedAt, $verificationToken, $verificationCode, $verificationTokenExpires, $accountStatus, $allowMessaging, $listingNotifications, $messageNotifications, $showEmail, $showOnlineStatus, $showPhoneNumber, $listings, ";
  }
}