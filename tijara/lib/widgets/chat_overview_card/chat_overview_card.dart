import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';

class ChatOverviewCard extends StatelessWidget {
  const ChatOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(width: 4),

          const CircleAvatar(
            radius: 32,
            child: Icon(Icons.person),
          ),

          const SizedBox(width: 8),

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "John Doe",
                  style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Hey! Are we still meeting today?",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            child: Text(
              "7:20 PM",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
