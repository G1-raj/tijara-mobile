import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/controllers/listing_controller.dart';
import 'package:tijara/controllers/user_controller.dart';
import 'package:tijara/helpers/format_server_date.dart';
import 'package:tijara/widgets/user_listing_card/user_listing_card.dart';

class ListingView extends StatefulWidget {
  final bool isFavouriteList;
  const ListingView({super.key, this.isFavouriteList = false});

  @override
  State<ListingView> createState() => _ListingViewState();
}

class _ListingViewState extends State<ListingView> {

  final UserController _userController = Get.put(UserController());
  final ListingController _listingController = Get.put(ListingController());

  @override
  void initState() {
    super.initState();

    loadData();
  }

  void loadData() async {
    await _userController.getUserProfileController();
    await _listingController.getAllFavouriteListingController();
  }

  @override
  Widget build(BuildContext context) {

    // _userController.getUserProfileController();

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text("Listings", style: TextStyle(

        ),),

        centerTitle: true,
      ),

      body: RefreshIndicator(
        onRefresh: () async {
          loadData();
        },
        child: SafeArea(
          child: Obx(
            () {
        
              final isFav = widget.isFavouriteList;
        
              if(
                  (_userController.noOfListings.value == 0 && _userController.listings.isEmpty) && 
                  (_listingController.noOfFavouriteLising.value == 0 && _listingController.favourites.isEmpty)) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
        
              return ListView.builder(
                itemCount: isFav ? _listingController.noOfFavouriteLising.value : _userController.noOfListings.value,
                itemBuilder: (context, index) {
        
                  final favList = _listingController.favourites;
                  final userList = _userController.listings;
        
                  final String bannerImage = isFav ? favList[index].images[0]  : userList[index].images[0].url as String;
                  final String productTitle = isFav ? favList[index].title ?? '' : userList[index].title ?? ''; 
                  final int price = isFav ? favList[index].price ?? 0 : userList[index].price ?? 0;
                  final String location = isFav ? favList[index].location ?? '' : userList[index].location ?? '';
                  final String date = isFav ? formatToDate(favList[index].createdAt.toString()) : formatToDate(userList[index].createdAt ?? ''); 
        
                  // final String bannerImage = _userController.listings[index].images[0].url as String;
                  // final String productTitle = _userController.listings[index]?.title ?? "NA";
                  // final int price = _userController.listings[index].price ?? 0;
                  // final String location = _userController.listings[index].location ?? "NA";
                  // final String date = formatToDate(_userController.listings[index].createdAt ?? "NA");
        
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
      ),
    );
  }
}
