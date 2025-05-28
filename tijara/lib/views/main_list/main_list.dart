import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/controllers/listing_controller.dart';
import 'package:tijara/controllers/user_controller.dart';
import 'package:tijara/views/listing/listing_detail_view.dart';
import 'package:tijara/widgets/product_overview_card/product_overview_card.dart';

class MainList extends StatelessWidget {
  final bool isVehicleList;
  MainList({super.key, required this.isVehicleList});

  final UserController _userController = Get.put(UserController());
  final ListingController _listingController = Get.put(ListingController());

  @override
  Widget build(BuildContext context) {
     _userController.getUserProfileController();

    return Obx(
      () {

        if(_userController.noOfListings.value == 0) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if(_userController.listings.isEmpty) {
          return Center(
            child: Text("No listing is available"),
          );
        }

        return ListView.builder(
          itemCount: isVehicleList ? _userController.noOfVehicleListings.value : _userController.noOfRealestateListing.value,
          itemBuilder: (context, index) {

            final String bannerImage = 
            isVehicleList ? 
            _userController.vehicleListing[index].images[0].url as String 
            : _userController.realestateListing[index].images[0].url as String;

            final String productTitle = isVehicleList ? _userController.vehicleListing[index].title ?? "Na" : _userController.realestateListing[index].title ?? "Na";
            final int price = isVehicleList ? _userController.vehicleListing[index].price ?? 00 : _userController.realestateListing[index].price ?? 00;
            final String productId = isVehicleList ? _userController.vehicleListing[index].id ?? 'Na' : _userController.realestateListing[index].id ?? "Na";


            return Padding(
              padding: const EdgeInsets.only(top: 3),
              child: GestureDetector(
                onTap: () {

                  _listingController.getIndividualListingController(productId);

                  Get.to(ListingDetailView(productId: productId,));
                },

                child: ProductOverviewCard(
                  bannerImageUrl: bannerImage,
                  title: productTitle,
                  price: price,
                ),
              ),
            );
          },
        );
      }
    );
  }
}