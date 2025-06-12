import 'package:flutter/material.dart';
import 'package:playfully_app/components/custom_elevated_button.dart';
import 'package:playfully_app/components/custom_textfield.dart';
import 'package:playfully_app/styles/colors.dart';

class RegisterPage extends StatelessWidget {
  static String id = "signin_page";

  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(
              color: aWhite, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: bgColor,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: aWhite,
            )),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "PlayFully.",
              style: TextStyle(
                  fontSize: 50, color: aWhite, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                // Username Field
                Row(children: [
                  Expanded(child: CustomTextField(textHint: "First Name")),
                  Expanded(child: CustomTextField(textHint: "Last Name"))
                ],),
                CustomTextField(
                  textHint: "Email",
                ),
                // Password Field
                CustomTextField(
                  textHint: "Password",
                  isPw: true,
                ),
                CustomTextField(
                  textHint: "Confirm Password",
                  isPw: true,
                ),
                

                // Login Button
                SizedBox(height: 15,),

                CustomElevatedButton(
                  buttonStyle: buttonLabel,
                  buttonText: "Create Account",
                  pageNavigator: () => debugPrint('Implement Account Creation Here'),
                ),
                // Forgotten Password
                SizedBox(height: 5,),
                Text(
                  "Forgotten Password?",
                  style: TextStyle(color: forgotColor),
                )
              ],
            ),

            SizedBox(height: 10,)
            // Create an account
          ],
        ),
      )),
    );
  }
}
