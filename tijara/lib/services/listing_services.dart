import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/models/listings/favourite_listing_saved_model.dart';
import 'package:tijara/models/listings/individual_listing_model.dart';
import 'package:tijara/models/response_model.dart';
import 'package:tijara/models/success_model.dart';

class ListingServices {

  final Dio _dio = Dio();

  Future<ResponseModel> getIndividualListingDataService(String id) async {
    try {

      var response = await _dio.get(individualListingDetailsRoute(id));

      return ResponseModel.success(
        SuccessModel(data: IndividualListingModel.fromJson(response.data))
      );
      
    } catch (e) {
      throw Exception("Failed to get data of listing error is in service and error is: $e");
    }
  }

  Future<ResponseModel> addListingToFavouriteService(String listingId, String accessToken) async {
    try {

      var response = await _dio.post(
        addListingToFavouriteRoute(listingId), 
        data: jsonEncode({}),
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
            'Content-Type': 'application/json',
          }
        )
      );

      return ResponseModel.success(
        SuccessModel(
          data: FavouriteListingSavedModel.fromJson(response.data)
        )
      );
      
    } catch (e) {
      throw Exception("Failed to mark listing as favourite and error is in service and error is: $e");
    }
  }
}