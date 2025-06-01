import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/models/listings/favourite_listing_model.dart';
import 'package:tijara/models/listings/favourite_listing_saved_model.dart';
import 'package:tijara/models/listings/individual_listing_model.dart';
import 'package:tijara/models/listings/remove_favourite_listing_model.dart';
import 'package:tijara/models/response_model.dart';
import 'package:tijara/models/success_model.dart';

class ListingServices {

  final Dio _dio = Dio();

  Future<ResponseModel> getIndividualListingDataService(String id) async {
    try {

      var response = await _dio.get(individualListingDetailsRoute(id));

      if(response.statusCode != 200) {
        throw Exception("Failed to get listing data");
      }

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

      if(response.statusCode != 200) {
        throw Exception("Failed to add listing to favourite");
      }

      return ResponseModel.success(
        SuccessModel(
          data: FavouriteListingSavedModel.fromJson(response.data)
        )
      );
      
    } catch (e) {
      throw Exception("Failed to mark listing as favourite and error is in service and error is: $e");
    }
  }

  Future<ResponseModel> getAllFavouriteListingService(String accessToken) async {
    try {

      var response = await _dio.get(
        getFavouriteListingRoute,
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
            'Content-Type': 'application/json',
          }
        )
      );

      if(response.statusCode != 200) {
        throw Exception("Failed to get all the favourite listing of user");
      }

      return ResponseModel.success(
        SuccessModel(
          data: FavouriteListingModel.fromJson(response.data)
        )
      );
      
    } catch (e) {
      throw Exception("Failed to get users favourite listings error is in service and error is: $e");
    }
  }

  Future<ResponseModel> removeFavouriteListingService(String accessToken, String listingId) async {
    try {

      var response = await _dio.delete(
        removeFavouriteListingRoute(listingId),
        options: Options(
          headers: {
            'Authorization': 'Bearer $accessToken',
          }
        )
      );

     
      if(response.statusCode != 200) {
        throw Exception("Failed to remove listing from favourites");
      }

      return ResponseModel.success(
        SuccessModel(
          data: RemoveFavouriteListingModel.fromJson(response.data)
        )
      );
      
    } catch (e) {
      throw Exception("Failed to remove listing from favourite and error is: $e on service");
    }
  }

}