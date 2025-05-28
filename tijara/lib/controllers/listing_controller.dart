import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:tijara/models/listings/individual_listing_model.dart';
import 'package:tijara/services/listing_services.dart';
import 'package:tijara/widgets/custom_snackbar/custom_snackbar.dart';

class ListingController extends GetxController {

  final FlutterSecureStorage _storage = FlutterSecureStorage();
  var listingDetails = Rxn<IndividualListingModel>();

  Future<void> getIndividualListingController(String listingId) async {
    try {

      listingDetails.value = null;

      var result = await ListingServices().getIndividualListingDataService(listingId);


      if(result.isSuccess) {
         listingDetails.value = result.successResponse!.data as IndividualListingModel;
      }

     
      
    } catch (e) {
      throw Exception("Failed to get details of listing error is in controller and error is: $e");
    }
  }

  Future<void> addListingToFavouriteController(String listingId) async {
    try {

      String? accessToken = await _storage.read(key: "tijara_access_token");

      if (accessToken == null) {
        throw Exception("Access token not found. Please login again.");
      }

      var result = await ListingServices().addListingToFavouriteService(listingId, accessToken);

      if(result.isSuccess) {
        showCustomSnackbar("Listing added to favourites", false);
      }
      
    } catch (e) {
      throw Exception("Failed to add listing to favourite error is in controller and error is: $e");
    }
  }
}