import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';

class RectButton extends StatelessWidget {
  final Color buttonColor;
  final double widthSize;
  final double heightSize;
  final String buttonTitle;
  const RectButton({super.key, required this.buttonColor, required this.heightSize, required this.widthSize, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widthSize,
      height: MediaQuery.of(context).size.height * heightSize,

      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0)
          )
        ),
        child: Text(buttonTitle, style: TextStyle(
          color: whiteColor
        ),),
      ),
    );
  }
}