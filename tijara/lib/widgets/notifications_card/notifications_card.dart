import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.18,
        color: whiteColor,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 32,
                backgroundColor: blueColor,
                child: const Icon(
                  Icons.calendar_month_outlined, 
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(width: 12),

            // Use Expanded to avoid overflow
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align to left
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Notification title",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  // Use Flexible to wrap long text
                  Flexible(
                    child: Text(
                      "This is a long text that should wrap properly without causing overflow issues.",
                      overflow: TextOverflow.ellipsis, // Optional: add '...' if text is too long
                      maxLines: 2, // Limit to 2 lines
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
