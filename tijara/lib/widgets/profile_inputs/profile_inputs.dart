import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/widgets/input_field/input_field.dart';

class ProfileInputs extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final String initalValue;
  final bool isBio;
  const ProfileInputs(
    {
      super.key, 
      required this.title, 
      required this.controller,
      required this.initalValue,
      this.isBio = false
    }
  );

  @override
  State<ProfileInputs> createState() => _ProfileInputsState();
}

class _ProfileInputsState extends State<ProfileInputs> {
  bool isEditable = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.075),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  color: purpleColor,
                  fontSize: screenWidth * 0.055,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child),
                child: isEditable
                    ? IconButton(
                        key: const ValueKey("done"),
                        onPressed: () {
                          setState(() {
                            isEditable = false;
                          });
                        },
                        icon: Icon(Icons.check, color: Colors.green, size: screenWidth * 0.06),
                      )
                    : IconButton(
                        key: const ValueKey("edit"),
                        onPressed: () {
                          setState(() {
                            isEditable = true;
                          });
                        },
                        icon: Icon(Icons.edit, color: purpleColor, size: screenWidth * 0.06),
                      ),
              )
            ],
          ),

          // const SizedBox(height: 2),

          
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: SizeTransition(
                  sizeFactor: animation,
                  axisAlignment: -1.0,
                  child: child,
                ),
              );
            },
            child: isEditable
                ? InputField(
                    key: const ValueKey("input"),
                    widthPercentage: 0.85,
                    heightPercentage: 0.1,
                    labelText: "Enter your name",
                    controller: widget.controller,
                  )
                : Text(
                  widget.controller.text.isEmpty ? widget.initalValue : widget.controller.text,
                  style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.05,
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
