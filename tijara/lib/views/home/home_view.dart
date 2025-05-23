import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/views/chat_list/chat_list_view.dart';
import 'package:tijara/views/profile/profile_view.dart';
import 'package:tijara/views/user_listing/user_listings.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currIndex = 0;

  final List<Widget> pages = [
    Center(child: Text("Page 1")),
    ChatListView(),
    UserListings(),
    ProfileView(),
  ];

  void switchPage(int index) {
    setState(() {
      currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: pages[currIndex],
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          switchPage(2); 
        },
        backgroundColor: blueColor,
        child: Icon(Icons.add, color: whiteColor,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: purpleColor,
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: currIndex == 0 ? whiteColor : Colors.white.withOpacity(0.5)),
                onPressed: () => switchPage(0),
              ),
              IconButton(
                icon: Icon(Icons.chat, color: currIndex == 1 ? whiteColor : Colors.white.withOpacity(0.5)),
                onPressed: () => switchPage(1),
              ),
              SizedBox(width: 40), // Space for FAB
              IconButton(
                icon: Icon(Icons.list, color: currIndex == 2 ? whiteColor : Colors.white.withOpacity(0.5)),
                onPressed: () => switchPage(2),
              ),
              IconButton(
                icon: Icon(Icons.person, color: currIndex == 3 ? whiteColor : Colors.white.withOpacity(0.5)),
                onPressed: () => switchPage(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
