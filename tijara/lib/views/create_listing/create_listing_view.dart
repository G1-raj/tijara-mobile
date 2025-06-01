import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/views/create_listing/real_estate_listing/real_estate_listing_view.dart';
import 'package:tijara/views/create_listing/vehicle_listing/vehicle_listing_view.dart';

class CreateListingView extends StatefulWidget {
  const CreateListingView({super.key});

  @override
  State<CreateListingView> createState() => _CreateListingViewState();
}

class _CreateListingViewState extends State<CreateListingView> {
  int selectedIndex = 0;
  final List<String> tabs = ['Vehicle', 'Real Estate'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        title: Text(
          "Create listing",
          style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(tabs.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ChoiceChip(
                    showCheckmark: false,
                    label: Text(tabs[index]),
                    selected: selectedIndex == index,
                    onSelected: (bool selected) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    selectedColor: blueColor,
                    labelStyle: TextStyle(
                      color: selectedIndex == index ? Colors.white : Colors.black,
                    ),
                    backgroundColor: Colors.grey[200],
                  ),
                );
              }),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: selectedIndex == 0
                  ? VehicleListingView()
                  : const RealEstateListingView(),
            ),
          ],
        ),
      ),
    );
  }
}
