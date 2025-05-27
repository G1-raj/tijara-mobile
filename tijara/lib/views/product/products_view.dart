import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/views/main_list/main_list.dart';
import 'package:tijara/views/notifications/notifications_page.dart';
import 'package:tijara/widgets/product_overview_card/product_overview_card.dart';
import 'package:tijara/widgets/search_bar_widget/search_bar_widget.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  bool isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  int selectedIndex = 0;
  final List<String> tabs = ['Vehicle', 'Real Estate'];

  void _toggleSearch() {
    setState(() {
      isSearching = !isSearching;
      if (!isSearching) _searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: whiteColor,

      appBar: AppBar(
        elevation: 6,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: SizeTransition(
                sizeFactor: animation,
                axis: Axis.horizontal,
                child: child,
              ),
            );
          },
          child: isSearching
              ? SizedBox(
                  key: ValueKey('search'),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: SearchBarWidget(controller: _searchController),
                )
              : Text(
                  "Tijara",
                  key: ValueKey('title'),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
        actions: [
          IconButton(
            onPressed: _toggleSearch,
            icon: Icon(isSearching ? Icons.close : Icons.search),
            color: Colors.black,
          ),
          const SizedBox(width: 3),
          IconButton(
            onPressed: () {
              Get.to(NotificationsPage());
            },
            icon: const Icon(Icons.notifications),
            color: Colors.black,
          ),
          const SizedBox(width: 10),
        ],
      ),


      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              const SizedBox(height: 12,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Wrap(
                    spacing: 10,
                    children: List.generate(tabs.length, (index) {
                      return ChoiceChip(
                        showCheckmark: false,
                        label: Text(tabs[index]),
                        selected: selectedIndex == index,
                        onSelected: (bool selected) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        selectedColor: blueColor,
                        backgroundColor: Colors.grey[300],
                        labelStyle: TextStyle(
                          color: selectedIndex == index ? Colors.white : Colors.black,
                        ),
                      );
                    }),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          
                        },
                        icon: const Icon(Icons.filter_list),
                        label: const Text("Filter"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          foregroundColor: Colors.black87,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              

              const SizedBox(height: 20),

              Expanded(
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  child: selectedIndex == 0
                      ? MainList(isVehicleList: true)
                      : MainList(isVehicleList: false)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

