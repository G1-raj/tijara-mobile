import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.45,
        child: Card(
          color: whiteColor,
          elevation: 8,
        ),
      ),
    );
  }
}