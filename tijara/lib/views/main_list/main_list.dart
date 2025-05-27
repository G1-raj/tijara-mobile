import 'package:flutter/material.dart';
import 'package:tijara/widgets/product_overview_card/product_overview_card.dart';

class MainList extends StatelessWidget {
  final bool isVehicleList;
  const MainList({super.key, required this.isVehicleList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Text(isVehicleList ? "This is vehicle list" : "This is real estate list"),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: ProductOverviewCard(),
            ),
          ],
        );
      },
    );
  }
}