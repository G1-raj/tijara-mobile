import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/widgets/chat_overview_card/chat_overview_card.dart';
import 'package:tijara/widgets/search_bar_widget/search_bar_widget.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,

      appBar: AppBar(
        backgroundColor: whiteColor,
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: SearchBarWidget(
                  controller: TextEditingController()
                ),
              ),

              const SizedBox(height: 18,),

              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ChatOverviewCard(),
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