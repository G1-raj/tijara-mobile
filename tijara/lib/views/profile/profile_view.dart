import 'package:flutter/material.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/widgets/app_button/app_button.dart';
import 'package:tijara/widgets/image_holder/image_holder.dart';
import 'package:tijara/widgets/profile_inputs/profile_inputs.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  // final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 48,),

                ImageHolder(),

                const SizedBox(height: 58,),

                ProfileInputs(
                  title: "Name",
                  controller: _nameController,
                  initalValue: "Govind Rajput",
                ),

                ProfileInputs(
                  title: "Email",
                  controller: _emailController,
                  initalValue: "govindrajput7767@gmail.com",
                ),

                ProfileInputs(
                  title: "Bio",
                  controller: _bioController,
                  initalValue: "I am an enginner",
                ),

                ProfileInputs(
                  title: "Phone No",
                  controller: _phoneController,
                  initalValue: "8765432190",
                ),

                ProfileInputs(
                  title: "Street",
                  controller: _streetController,
                  initalValue: "Nari road",
                ),

                ProfileInputs(
                  title: "City",
                  controller: _cityController,
                  initalValue: "Nagpur",
                ),

                const SizedBox(height: 22,),

                AppButton(
                  widthSize: 0.65,
                  heightSize: 0.06, 
                  buttonColor: Colors.red, 
                  text: "Logout", 
                  textColor: whiteColor
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}