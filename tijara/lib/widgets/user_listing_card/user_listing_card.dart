import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/widgets/app_button/app_button.dart';

class UserListingCard extends StatelessWidget {
  const UserListingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              // Image Section
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  "https://www.team-bhp.com/sites/default/files/pictures2023/1_31.jpeg",
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.18,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 12),

              // Info & Buttons Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Title & Price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Volkswagen Polo GT",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "\$8000",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    // Location & Date
                    Row(
                      children: [
                        Icon(Icons.location_pin, color: greyColor, size: 18),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            "HOMS",
                            style: TextStyle(color: greyColor, fontSize: 14),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 4),

                    Text(
                      "12/05/2025",
                      style: TextStyle(color: greyColor, fontSize: 14),
                    ),

                    const SizedBox(height: 10),

                    // Buttons
                    Row(
                      children: [
                        Expanded(
                          child: AppButton(
                            widthSize: 1,
                            heightSize: 0.06,
                            buttonColor: blueColor,
                            text: "Edit",
                            textColor: whiteColor,
                            textSize: 14,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: AppButton(
                            widthSize: 1,
                            heightSize: 0.06,
                            buttonColor: Colors.red,
                            text: "Delete",
                            textColor: whiteColor,
                            textSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
