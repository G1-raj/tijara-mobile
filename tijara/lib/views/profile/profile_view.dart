import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/controllers/auth_controller.dart';
import 'package:tijara/controllers/listing_controller.dart';
import 'package:tijara/controllers/user_controller.dart';
import 'package:tijara/views/listing/listing_view.dart';
import 'package:tijara/views/profile/my_profile_view.dart';
import 'package:tijara/views/settings/settings_view.dart';
import 'package:tijara/widgets/app_button/app_button.dart';
import 'package:tijara/widgets/image_holder/image_holder.dart';


class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  // final UserController _userController = Get.put(UserController());

  final AuthController _authController = Get.put(AuthController());

  // final ListingController _listingController = Get.put(ListingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 48,),

                ImageHolder(),

                const SizedBox(height: 12,),

                Obx(
                  () {
                    return Text(_authController.user.value?.username ?? "Na", style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),);
                  }
                ),

                Divider(
                  indent: MediaQuery.of(context).size.width * 0.18,
                  endIndent: MediaQuery.of(context).size.width * 0.18,
                ),

                const SizedBox(height: 18,),

                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                  trailing: Icon(Icons.arrow_forward_ios),

                  onTap: () {
                    Get.to(MyProfileView());
                  },
                ),

                ListTile(
                  leading: Icon(Icons.list),
                  title: Text("My Listings"),
                  trailing: Icon(Icons.arrow_forward_ios),

                  onTap: () {
                    Get.to(ListingView());
                  },
                ),

                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text("Favourite or Saved listings"),
                  trailing: Icon(Icons.arrow_forward_ios),

                  onTap: () {
                    Get.to(ListingView(isFavouriteList: true,));
                  },
                ),
                
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  trailing: Icon(Icons.arrow_forward_ios),

                  onTap: () {
                    Get.to(SettingsView());
                  },
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.1,),

                AppButton(
                  widthSize: 0.65,
                  heightSize: 0.06, 
                  buttonColor: Colors.red, 
                  text: "Logout", 
                  textColor: whiteColor,
                  onPressed: () {
                    // _userController.getUserProfileController();

                    _authController.logOutController();

                    // _listingController.getIndividualListingController("cmaxw3f0p0001jw1dp3mhpjfg");

                    // print("Successfully executed logout succesfully😄");
                  },
                )

                

              ],
            ),
          ),
        ),
      ),
    );
  }
}

