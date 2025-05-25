import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/views/chat/chat_list_view.dart';
import 'package:tijara/views/create_listing/basic_details_view.dart';
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
    BasicDetailsView(),
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

//  drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.38,
//               child: DrawerHeader(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ImageHolder(),
//                     const SizedBox(height: 10),
//                     const Text("John Doe", style: TextStyle(fontSize: 18)),
//                     const Text("john.doe@example.com", style: TextStyle(fontSize: 14)),
//                   ],
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.list),
//               title: const Text("Listings"),
//               onTap: () => Get.to(ListingView()),
//             ),
//             ListTile(
//               leading: const Icon(Icons.chat_bubble),
//               title: const Text("Chats"),
//               onTap: () => Get.to(ChatListView()),
//             ),
//             ListTile(
//               leading: const Icon(Icons.create),
//               title: const Text("Create Listing"),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: const Icon(Icons.person),
//               title: const Text("Profile"),
//               onTap: () => Get.to(ProfileView()),
//             ),
//             ListTile(
//               leading: const Icon(Icons.settings),
//               title: const Text("Settings"),
//               onTap: () => Get.to(SettingsView()),
//             ),
//           ],
//         ),
//       ),




