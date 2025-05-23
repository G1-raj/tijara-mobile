import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final double widthPercentage;
  final double heightPercentage;
  final String labelText;
  final TextEditingController controller;
  const InputField(
    {
      super.key, 
      required this.widthPercentage, 
      required this.heightPercentage, 
      required this.labelText,
      required this.controller
    }
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widthPercentage,
      height:  MediaQuery.of(context).size.height * heightPercentage,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: labelText,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0)
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0)
          ),

          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0)
          ),

          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0)
          ),


        ),
      ),
    );
  }
}