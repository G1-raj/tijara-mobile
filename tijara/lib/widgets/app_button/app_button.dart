import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double widthSize;     // e.g., 0.8 for 80% of screen width
  final double heightSize;    // e.g., 0.06 for 6% of screen height
  final Color buttonColor;
  final String text;
  final Color textColor;
  final double textSize;
  final VoidCallback? onPressed;

  const AppButton({
    super.key,
    required this.widthSize,
    required this.heightSize,
    required this.buttonColor,
    required this.text,
    required this.textColor,
    this.textSize = 18,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth * widthSize,
      height: screenHeight * heightSize,
      child: ElevatedButton(
        onPressed: onPressed ?? () {}, // Default: do nothing
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          elevation: 4,
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }
}
