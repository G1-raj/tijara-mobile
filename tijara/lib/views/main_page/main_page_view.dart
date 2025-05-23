import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/widgets/product_overview_card/product_overview_card.dart';
import 'package:tijara/widgets/search_bar_widget/search_bar_widget.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 18),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: SearchBarWidget(controller: TextEditingController()),
              ),

              const SizedBox(height: 12),

              // 🔽 Filter Section Added Here
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    FilterChipWidget(label: "All"),
                    FilterChipWidget(label: "Popular"),
                    FilterChipWidget(label: "Newest"),
                    FilterChipWidget(label: "Price ↑"),
                    FilterChipWidget(label: "Price ↓"),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // 🔽 Product List Section
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
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

// 🔽 Reusable FilterChip Widget
class FilterChipWidget extends StatelessWidget {
  final String label;
  const FilterChipWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ChoiceChip(
        label: Text(label),
        selected: false, // You can make this stateful if needed
        onSelected: (val) {
          // TODO: Apply filter logic
        },
        selectedColor: blueColor.withOpacity(0.2),
        backgroundColor: Colors.grey.shade200,
        labelStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
