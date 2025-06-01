import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/controllers/auth_controller.dart';
import 'package:tijara/widgets/app_button/app_button.dart';
import 'package:tijara/widgets/image_holder/image_holder.dart';

class MyProfileView extends StatefulWidget {
  const MyProfileView({super.key});

  @override
  State<MyProfileView> createState() => _MyProfileViewState();
}

class _MyProfileViewState extends State<MyProfileView> {
  bool isEditing = false;
  final AuthController authController = Get.put(AuthController());

  String userName = '';
  String email = '';
  String phoneNo = '';
  String bio = '';
  String street = '';
  String city = '';

  @override
  void initState() {
    super.initState();

    userName = authController.user.value?.username ?? "No Name Available";
    email = authController.user.value?.email ?? "No email is available";
    phoneNo = authController.user.value?.phone ?? "No phone no is available";
    bio = authController.user.value?.bio ?? "No bio is available";
    street = authController.user.value?.street ?? "No street is available";
    city = authController.user.value?.city ?? "No city is available";
  }

  late TextEditingController usernameController = TextEditingController(text: userName);
  late TextEditingController emailController = TextEditingController(text: email);
  late TextEditingController phoneController = TextEditingController(text: phoneNo);
  late TextEditingController bioController = TextEditingController(text: bio);
  late TextEditingController streetController = TextEditingController(text: street);
  late TextEditingController cityController = TextEditingController(text: city);

  Widget buildProfileField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: TextStyle(
                color: blueColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )),
          const SizedBox(height: 4),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: isEditing
                ? TextField(
                    controller: controller,
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: const InputDecoration(border: InputBorder.none),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      controller.text,
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        title: Text(
          "My Profile",
          style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 8),
                const ImageHolder(),
                const SizedBox(height: 6),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                  indent: screenWidth * 0.2,
                  endIndent: screenWidth * 0.2,
                ),
                const SizedBox(height: 24),
                buildProfileField("Username", usernameController),
                buildProfileField("Email", emailController),
                buildProfileField("Phone No", phoneController),
                buildProfileField("Bio", bioController),
                buildProfileField("Street", streetController),
                buildProfileField("City", cityController),
                const SizedBox(height: 22),
                AppButton(
                  widthSize: 0.55,
                  heightSize: 0.06,
                  buttonColor: blueColor,
                  text: isEditing ? "Save" : "Edit",
                  textColor: whiteColor,
                  textSize: 22,
                  onPressed: () {
                    setState(() {
                      isEditing = !isEditing;

                      if (!isEditing) {
                        // Save profile data here
                        print("Saved: ${usernameController.text}, ${emailController.text}, etc.");
                      }
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
