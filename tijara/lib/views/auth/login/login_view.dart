import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tijara/constants.dart';
import 'package:tijara/controllers/auth_controller.dart';
import 'package:tijara/widgets/app_button/app_button.dart';
import 'package:tijara/widgets/input_field/input_field.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthController _authController = Get.put(AuthController());

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  color: blueColor,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Tijara", style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 32
                    ),),
                  ),
                ),
                
                const SizedBox(height: 12,),
                
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
                    child: Text("Email", style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),),
                  ),
                ),
                
                const SizedBox(height: 6,),
                
                InputField(
                  widthPercentage: 0.9,
                  heightPercentage: 0.075,
                  labelText: "example@email.com",
                  controller: _emailController,
                ),
                
                const SizedBox(height: 12,),
                
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
                    child: Text("Password", style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),),
                  ),
                ),
                
                const SizedBox(height: 6,),
                
                InputField(
                  widthPercentage: 0.9,
                  heightPercentage: 0.075,
                  labelText: "example_password",
                  controller: _passwordController,
                  isPassword: true,
                ),
                
                Container(
                  width: size.width * 0.9,
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed('/forgot-password'); // Adjust route accordingly
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                
                const SizedBox(height: 28,),
                
                AppButton(
                  widthSize: 0.6,
                  heightSize: 0.07,
                  buttonColor: blueColor,
                  text: "Login",
                  textColor: whiteColor,
                  onPressed: () {
                    // if ((_formKey.currentState as FormState).validate()) {
                    //   _authController.login(
                    //     _emailController.text.trim(),
                    //     _passwordController.text.trim(),
                    //   );
                    // }
                
                    _authController.loginController(_emailController.text, _passwordController.text);
                  },
                ),
                
                const SizedBox(height: 8,),
                
                TextButton(
                  onPressed: () {
                    
                
                  },
                  child: const Text(
                    "Don't have an account? Sign up",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                
                
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}


