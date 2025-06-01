import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:tijara/models/listings/favourite_listing_model.dart';
import 'package:tijara/models/listings/individual_listing_model.dart';
import 'package:tijara/services/listing_services.dart';
import 'package:tijara/widgets/custom_snackbar/custom_snackbar.dart';

class ListingController extends GetxController {

  final FlutterSecureStorage _storage = FlutterSecureStorage();
  var listingDetails = Rxn<IndividualListingModel>();
  var allFavouriteListing = Rxn<FavouriteListingModel>();
  var favourites = RxList<Favorite>();
  RxBool isFavourite = false.obs;

  RxInt noOfFavouriteLising = 0.obs;

  Future<void> getIndividualListingController(String listingId) async {
    try {

      listingDetails.value = null;
      await getAllFavouriteListingController();

      var result = await ListingServices().getIndividualListingDataService(listingId);


      if(result.isSuccess) {
         listingDetails.value = result.successResponse!.data as IndividualListingModel;

         final favListings = allFavouriteListing.value!.data?.favorites ?? [];
         noOfFavouriteLising.value = favListings.length;
         isFavourite.value = favListings.any((listing) => listing.id == listingId);
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

  Future<void> getAllFavouriteListingController() async {
    try {

      String? accessToken = await _storage.read(key: "tijara_access_token");

      if (accessToken == null) {
        throw Exception("Access token not found. Please login again.");
      }

      var result = await ListingServices().getAllFavouriteListingService(accessToken);

      if(result.isSuccess) {

        final data = result.successResponse!.data;
        allFavouriteListing.value = data as FavouriteListingModel;
        favourites.value = allFavouriteListing.value!.data?.favorites ?? [];

        noOfFavouriteLising.value = favourites.length;
       
      }
    } catch (e) {
      throw Exception("Failed to get all the favourite listing of user and error is in controller and error is: $e");
    }
  }

  Future<void> removeListingFromFavouriteController(String listingId) async {
    try {

      String? accessToken = await _storage.read(key: "tijara_access_token");

      if (accessToken == null) {
        throw Exception("Access token not found. Please login again.");
      }

      var result = await ListingServices().removeFavouriteListingService(accessToken, listingId);

      if(result.isSuccess) {
        isFavourite.value = false;
        showCustomSnackbar("Listing is removed from favourites", true);
      }
      
    } catch (e) {
      throw Exception("Failed to remove listing from favourtie and error is in controller and error is: $e");
    }
  }

 Future<void> toggleFavourite(String listingId) async {
    if (isFavourite.value) {

      try {

        isFavourite.value = false;
        await removeListingFromFavouriteController(listingId);
        
      } catch (e) {
        isFavourite.value = true;
        throw Exception("Failed to remove the listing from favourites and error is: $e");
      }
      
    } else {

       try {

          isFavourite.value = true;
          await  addListingToFavouriteController(listingId);
          
        } catch (e) {
          isFavourite.value = false;
          throw Exception("Failed to add the listing into favourites and error is: $e");
        }
    }
  }
}