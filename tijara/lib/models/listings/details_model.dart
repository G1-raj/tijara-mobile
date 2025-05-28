import 'package:tijara/models/listings/vehicles_model.dart';

class DetailsModel {
  final VehiclesModel? vehicles;

  DetailsModel(
    {
      required this.vehicles
    }
  );

  factory DetailsModel.fromJson(Map<String, dynamic> json){ 
      return DetailsModel(
          vehicles: json["vehicles"] == null ? null : VehiclesModel.fromJson(json["vehicles"]),
      );
  }

  Map<String, dynamic> toJson() {
    return {
      "vehicles": vehicles?.toJson(),
    };
  }

  @override
  String toString(){
      return "$vehicles, ";
  }
}