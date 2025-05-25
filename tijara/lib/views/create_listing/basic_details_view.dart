import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/widgets/app_button/app_button.dart';
import 'package:tijara/widgets/choice_selector/choice_selector.dart';
import 'package:tijara/widgets/input_field/input_field.dart';

class BasicDetailsView extends StatefulWidget {
  const BasicDetailsView({super.key});

  @override
  State<BasicDetailsView> createState() => _BasicDetailsViewState();
}

class _BasicDetailsViewState extends State<BasicDetailsView> {

  String selectedType = "Vehicle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,

      appBar: AppBar(
        backgroundColor: whiteColor,

        title: Text("Basic Details", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: blackColor
        ),),
      ),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ChoiceSelector(
                title: "",
                choices: ["Vehicle", "Real estate"],
                selectedChoice: selectedType,
                onChanged: (value) {
                  if(selectedType == "Vehicle") {
                    setState(() {
                      selectedType = "Real estate";
                    });
                  } else {
                    setState(() {
                      selectedType = "Vehicle";
                    });
                  }
                },
              ),

              const SizedBox(height: 28,),

              InputField(widthPercentage: 0.8, heightPercentage: 0.2, labelText: "Title", controller: TextEditingController()),
       

              InputField(widthPercentage: 0.8, heightPercentage: 0.2, labelText: "Description", controller: TextEditingController()),
           

              AppButton(
                widthSize: 0.65,
                heightSize: 0.06, 
                buttonColor: blueColor, 
                text: "Next", 
                textColor: whiteColor
              )

              
            ],
          ),
        ),
      ),
    );
  }
}