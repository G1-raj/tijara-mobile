import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/views/chat/chat_list_view.dart';
import 'package:tijara/views/create_listing/create_listing_view.dart';
import 'package:tijara/views/product/products_view.dart';
import 'package:tijara/views/profile/profile_view.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 
  int currIndex = 0;

  final List<Widget> _pages = [
    ProductsView(),
    CreateListingView(),
    ChatListView(),
    ProfileView()
  ];
 
  void changePage(int index) {
    setState(() {
      currIndex = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,

      body: _pages[currIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        onTap: changePage,
        selectedItemColor: blueColor,
        unselectedItemColor: greyColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Create Listing"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
