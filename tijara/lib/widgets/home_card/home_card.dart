import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.35,
      child: Card(
        color: purpleColor,
        child: Column(
          children: [
            const SizedBox(height: 18,),
            Text("Find your perfect vehicle", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: whiteColor,
              fontSize: 16
            ),),

            Text("Discover your dream car from our wide collection", style: TextStyle(
              color: greyColor,
              fontSize: 12
            ),),
          ],
        ),
      ),
    );
  }
}