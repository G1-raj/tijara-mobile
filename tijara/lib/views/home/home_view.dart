import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/views/chat/chat_list_view.dart';
import 'package:tijara/views/listing/listing_view.dart';
import 'package:tijara/views/notifications/notifications_page.dart';
import 'package:tijara/views/profile/profile_view.dart';
import 'package:tijara/views/settings/settings_view.dart';
import 'package:tijara/widgets/image_holder/image_holder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
           SizedBox(
             height: MediaQuery.of(context).size.height * 0.38,
             child: DrawerHeader(
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageHolder(),
                  SizedBox(height: 10),
                  Text(
                    "John Doe",
                    style: TextStyle(color: blackColor, fontSize: 18),
                  ),
                  Text(
                    "john.doe@example.com",
                    style: TextStyle(color: blackColor, fontSize: 14),
                  ),
                ],
              ),
             ),
           ),
        
           ListTile(
            leading: const Icon(Icons.list),
            title: Text("Listings"),
            onTap: () {
              Get.to(ListingView());
            },
           ),
           ListTile(
            leading: const Icon(Icons.chat_bubble),
            title: Text("Chats"),
            onTap: () {
              Get.to(ChatListView());
            },
           ),
           ListTile(
            leading: const Icon(Icons.create),
            title: Text("Create Listing"),
            onTap: () {},
           ),
           ListTile(
            leading: const Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Get.to(ProfileView());
            },
           ),
           ListTile(
            leading: const Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Get.to(SettingsView());
            },
           ),
          ],
        ),
      ),

      appBar: AppBar(

        elevation: 6,
        backgroundColor: whiteColor,
        shadowColor: whiteColor,

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              onPressed: () {
                Get.to(NotificationsPage());
              },
              icon: Icon(Icons.notifications),
            ),
          )
        ],
      ),
    );
  }
}