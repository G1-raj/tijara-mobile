import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/views/chat_screen/chat_screen_view.dart';
import 'package:tijara/widgets/chat_overview_card/chat_overview_card.dart';
import 'package:tijara/widgets/search_bar_widget/search_bar_widget.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: SearchBarWidget(controller: TextEditingController())
              ),

              const SizedBox(height: 28,),

              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ChatOverviewCard(
                      userName: "Alice Johnson",
                      lastMessage: "Hey! Are you free this evening?",
                      time: "9:45 PM",
                      profileImageUrl: "https://i.pravatar.cc/150?img=3",
                      unreadCount: 2,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(userName: "Alice Johnson", profileImageUrl: "https://i.pravatar.cc/150?img=3")));
                      },
                    );
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