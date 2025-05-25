import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/views/notifications/notifications_page.dart';
import 'package:tijara/widgets/product_overview_card/product_overview_card.dart';
import 'package:tijara/widgets/search_bar_widget/search_bar_widget.dart';

class ProductsView extends StatelessWidget {
  ProductsView({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: whiteColor,

      appBar: AppBar(
        elevation: 6,
        backgroundColor: whiteColor,
        shadowColor: whiteColor,

        title: Text("Tijara", style: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.bold
        ),),

        actions: [
          IconButton(
            onPressed: () {
              Get.to(NotificationsPage());
            },
            icon: const Icon(Icons.notifications),
          ),
          const SizedBox(width: 10),
        ],
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: SearchBarWidget(
                  controller: _searchController
                ),
              ),
              

              const SizedBox(height: 12,),

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

              const SizedBox(height: 12),

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