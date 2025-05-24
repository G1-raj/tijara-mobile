import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/widgets/choice_selector/choice_selector.dart';
import 'package:tijara/widgets/settings_switch/settings_switch.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,

      appBar: AppBar(
        backgroundColor: whiteColor,

        title: Text("Settings", style: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.bold
        ),),

        centerTitle: true,
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 18,),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text("Preferences", style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                ),
              ),

              SettingsSwitch(title: "Dark Theme", value: true, onChanged: (value) {}),

              ChoiceSelector(title: "Language", choices: ["English", "Hindi"], selectedChoice: "English", onChanged: (value) {})
            ],
          ),
        ),
      ),
    );
  }
}