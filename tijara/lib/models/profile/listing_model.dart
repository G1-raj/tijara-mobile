import 'package:tijara/models/profile/image_model.dart';

class ListingModel {
    final String? id;
    final String? title;
    final String? description;
    final int? price;
    final String? category;
    final String? mainCategory;
    final String? subCategory;
    final String? location;
    final dynamic condition;
    final String? listingAction;
    final String? status;
    final String? createdAt;
    final String? updatedAt;
    final String? userId;
    final dynamic bathrooms;
    final dynamic bedrooms;
    final dynamic color;
    final dynamic engineNumber;
    final dynamic engineSize;
    final dynamic floors;
    final dynamic fuelType;
    final dynamic interiorColor;
    final dynamic make;
    final dynamic mileage;
    final dynamic model;
    final dynamic parkingSpaces;
    final dynamic size;
    final dynamic transmission;
    final dynamic utilities;
    final dynamic year;
    final dynamic yearBuilt;
    final List<ImageModel> images;
    final List<dynamic> favorites;

    ListingModel(
      {
        required this.id,
        required this.title,
        required this.description,
        required this.price,
        required this.category,
        required this.mainCategory,
        required this.subCategory,
        required this.location,
        required this.condition,
        required this.listingAction,
        required this.status,
        required this.createdAt,
        required this.updatedAt,
        required this.userId,
        required this.bathrooms,
        required this.bedrooms,
        required this.color,
        required this.engineNumber,
        required this.engineSize,
        required this.floors,
        required this.fuelType,
        required this.interiorColor,
        required this.make,
        required this.mileage,
        required this.model,
        required this.parkingSpaces,
        required this.size,
        required this.transmission,
        required this.utilities,
        required this.year,
        required this.yearBuilt,
        required this.images,
        required this.favorites,
      }
    );

    factory ListingModel.fromJson(Map<String, dynamic> json){ 
      return ListingModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        category: json["category"],
        mainCategory: json["mainCategory"],
        subCategory: json["subCategory"],
        location: json["location"],
        condition: json["condition"],
        listingAction: json["listingAction"],
        status: json["status"],
        createdAt:json["createdAt"],
        updatedAt: json["updatedAt"],
        userId: json["userId"],
        bathrooms: json["bathrooms"],
        bedrooms: json["bedrooms"],
        color: json["color"],
        engineNumber: json["engineNumber"],
        engineSize: json["engineSize"],
        floors: json["floors"],
        fuelType: json["fuelType"],
        interiorColor: json["interiorColor"],
        make: json["make"],
        mileage: json["mileage"],
        model: json["model"],
        parkingSpaces: json["parkingSpaces"],
        size: json["size"],
        transmission: json["transmission"],
        utilities: json["utilities"],
        year: json["year"],
        yearBuilt: json["yearBuilt"],
        images: json["images"] == null ? [] : List<ImageModel>.from(json["images"]!.map((x) => ImageModel.fromJson(x))),
        favorites: json["favorites"] == null ? [] : List<dynamic>.from(json["favorites"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
        "title": title,
        "description": description,
        "price": price,
        "category": category,
        "mainCategory": mainCategory,
        "subCategory": subCategory,
        "location": location,
        "condition": condition,
        "listingAction": listingAction,
        "status": status,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "userId": userId,
        "bathrooms": bathrooms,
        "bedrooms": bedrooms,
        "color": color,
        "engineNumber": engineNumber,
        "engineSize": engineSize,
        "floors": floors,
        "fuelType": fuelType,
        "interiorColor": interiorColor,
        "make": make,
        "mileage": mileage,
        "model": model,
        "parkingSpaces": parkingSpaces,
        "size": size,
        "transmission": transmission,
        "utilities": utilities,
        "year": year,
        "yearBuilt": yearBuilt,
        "images": images.map((x) => x?.toJson()).toList(),
        "favorites": favorites.map((x) => x).toList(),
    };
  }

  @override
  String toString(){
      return "$id, $title, $description, $price, $category, $mainCategory, $subCategory, $location, $condition, $listingAction, $status, $createdAt, $updatedAt, $userId, $bathrooms, $bedrooms, $color, $engineNumber, $engineSize, $floors, $fuelType, $interiorColor, $make, $mileage, $model, $parkingSpaces, $size, $transmission, $utilities, $year, $yearBuilt, $images, $favorites, ";
  }


}