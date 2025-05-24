import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/views/chat/chat_list_view.dart';
import 'package:tijara/views/listing/listing_view.dart';
import 'package:tijara/views/notifications/notifications_page.dart';
import 'package:tijara/views/profile/profile_view.dart';
import 'package:tijara/views/settings/settings_view.dart';
import 'package:tijara/widgets/image_holder/image_holder.dart';
import 'package:tijara/widgets/product_overview_card/product_overview_card.dart';
import 'package:tijara/widgets/search_bar_widget/search_bar_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _showSearchBar = false;
  final TextEditingController _searchController = TextEditingController();

  void _toggleSearch() {
    setState(() {
      _showSearchBar = !_showSearchBar;
    });
  }

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
                    const SizedBox(height: 10),
                    const Text("John Doe", style: TextStyle(fontSize: 18)),
                    const Text("john.doe@example.com", style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text("Listings"),
              onTap: () => Get.to(ListingView()),
            ),
            ListTile(
              leading: const Icon(Icons.chat_bubble),
              title: const Text("Chats"),
              onTap: () => Get.to(ChatListView()),
            ),
            ListTile(
              leading: const Icon(Icons.create),
              title: const Text("Create Listing"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () => Get.to(ProfileView()),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () => Get.to(SettingsView()),
            ),
          ],
        ),
      ),

      appBar: AppBar(
        elevation: 6,
        backgroundColor: whiteColor,
        shadowColor: whiteColor,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(NotificationsPage());
            },
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: _toggleSearch,
            icon: Icon(_showSearchBar ? Icons.close : Icons.search),
          ),
          const SizedBox(width: 10),
        ],
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 18),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: _showSearchBar
                    ? MediaQuery.of(context).size.width * 0.9
                    : 0,
                height: _showSearchBar ? 50 : 0,
                child: _showSearchBar
                    ? SearchBarWidget(controller: _searchController)
                    : null,
              ),

              const SizedBox(height: 12,),

              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ProductOverviewCard();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
