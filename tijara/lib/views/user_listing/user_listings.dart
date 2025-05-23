import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/widgets/user_listing_card/user_listing_card.dart';

class UserListings extends StatelessWidget {
  const UserListings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text("Listings", style: TextStyle(

        ),),

        centerTitle: true,
      ),

      body: SafeArea(
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return UserListingCard();
          },
        ),
      ),
    );
  }
}