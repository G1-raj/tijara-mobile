import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/widgets/notifications_card/notifications_card.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: whiteColor,

      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text("Notifications", style: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.bold
        ),),

        centerTitle: true,
      ),

      body: SafeArea(
        child: Center(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return NotificationCard();
            },
          ),
        ),
      ),
    );
  }
}