import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/controllers/user_controller.dart';
import 'package:tijara/helpers/format_server_date.dart';
import 'package:tijara/widgets/user_listing_card/user_listing_card.dart';

class ListingView extends StatelessWidget {
  ListingView({super.key});

  final UserController _userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {

    _userController.getUserProfileController();

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text("Listings", style: TextStyle(

        ),),

        centerTitle: true,
      ),

      body: SafeArea(
        child: Obx(
          () {

            if(_userController.noOfListings.value == 0 && _userController.listings.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView.builder(
              itemCount: _userController.noOfListings.value,
              itemBuilder: (context, index) {

                final String bannerImage = _userController.listings[index].images[0].url as String;
                final String productTitle = _userController.listings[index]?.title ?? "NA";
                final int price = _userController.listings[index].price ?? 0;
                final String location = _userController.listings[index].location ?? "NA";
                final String date = formatToDate(_userController.listings[index].createdAt ?? "NA");

                return UserListingCard(
                  imageUrl: bannerImage,
                  productTitle: productTitle,
                  price: price,
                  location: location,
                  listingDate: date,
                );
              },
            );
          }
        ),
      ),
    );
  }
}
