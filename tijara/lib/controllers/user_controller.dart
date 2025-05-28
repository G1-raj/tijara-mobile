import 'package:get/get.dart';
import 'package:tijara/models/profile/listing_model.dart';
import 'package:tijara/models/profile/profile_success_response_model.dart';
import 'package:tijara/services/user_services.dart';

class UserController extends GetxController {
  RxInt noOfListings = 0.obs;
  RxInt noOfVehicleListings = 0.obs;
  RxInt noOfRealestateListing = 0.obs;

  var listings = RxList<ListingModel>();
  var vehicleListing = RxList<ListingModel>();
  var realestateListing = RxList<ListingModel>();

  Future<void> getUserProfileController() async {
     try {

      var result = await UserServices().getUserProfileService("cmaxlq7v00000nillftb5zxqf");

      if(result.isSuccess) {
        final data = result.successResponse!.data as ProfileSuccessResponseModel;

        noOfListings.value = data.data?.listings.length ?? 0;
        listings.value = data.data?.listings ?? [];

        vehicleListing.value = listings.where((item) => item.category != "realEstate").toList();
        noOfVehicleListings.value = vehicleListing.length;

        realestateListing.value = listings.where((item) => item.category == "realEstate").toList();
        noOfRealestateListing.value = realestateListing.length;
      } 
       
     } catch (e) {
       throw Exception("Failed to get user details and error is in controller and error is: $e");
     }
  }
}