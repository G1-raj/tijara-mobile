import 'package:tijara/models/listings/category_model.dart';
import 'package:tijara/models/listings/details_model.dart';
import 'package:tijara/models/listings/seller_model.dart';

class ListingDataModel {
  final String? id;
  final String? title;
  final String? description;
  final int? price;
  final CategoryModel? category;
  final String? location;
  final List<String> images;
  final String? createdAt;
  final String? updatedAt;
  final String? userId;
  final DetailsModel? details;
  final String? listingAction;
  final String? status;
  final SellerModel? seller;
  final List<dynamic> savedBy;

  ListingDataModel(
    {
      required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.category,
      required this.location,
      required this.images,
      required this.createdAt,
      required this.updatedAt,
      required this.userId,
      required this.details,
      required this.listingAction,
      required this.status,
      required this.seller,
      required this.savedBy,
    }
  );

  factory ListingDataModel.fromJson(Map<String, dynamic> json){ 
      return ListingDataModel(
          id: json["id"],
          title: json["title"],
          description: json["description"],
          price: json["price"],
          category: json["category"] == null ? null : CategoryModel.fromJson(json["category"]),
          location: json["location"],
          images: json["images"] == null ? [] : List<String>.from(json["images"]!.map((x) => x)),
          createdAt: json["createdAt"],
          updatedAt: json["updatedAt"],
          userId: json["userId"],
          details: json["details"] == null ? null : DetailsModel.fromJson(json["details"]),
          listingAction: json["listingAction"],
          status: json["status"],
          seller: json["seller"] == null ? null : SellerModel.fromJson(json["seller"]),
          savedBy: json["savedBy"] == null ? [] : List<dynamic>.from(json["savedBy"]!.map((x) => x)),
      );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "price": price,
      "category": category?.toJson(),
      "location": location,
      "images": images.map((x) => x).toList(),
      "createdAt": createdAt,
      "updatedAt": updatedAt,
      "userId": userId,
      "details": details?.toJson(),
      "listingAction": listingAction,
      "status": status,
      "seller": seller?.toJson(),
      "savedBy": savedBy.map((x) => x).toList(),
    };
  }

  @override
  String toString(){
      return "$id, $title, $description, $price, $category, $location, $images, $createdAt, $updatedAt, $userId, $details, $listingAction, $status, $seller, $savedBy, ";
  }
}