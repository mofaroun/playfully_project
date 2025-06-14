import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playfully_app/components/custom_elevated_button.dart';
import 'package:playfully_app/components/custom_textfield.dart';
import 'package:playfully_app/pages/register_page.dart';
import 'package:playfully_app/styles/colors.dart';

class SignInPage extends StatelessWidget {
  static String id = "signin_page";

  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Log in",
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
                CustomTextField(
                  textHint: "Email",
                ),
                // Password Field
                CustomTextField(
                  textHint: "Password",
                  isPw: true,
                ),

                // Login Button
                SizedBox(
                  height: 15,
                ),

                CustomElevatedButton(
                  buttonStyle: buttonLabel,
                  buttonText: "Login",
                  onTap: () => debugPrint('Implement Login Here'),
                ),
                // Forgotten Password
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Forgotten Password?",
                  style: TextStyle(color: forgotColor),
                )
              ],
            ),

            // Havent signed up yet text
            Column(
              children: [
                Text(
                  "Haven't signed up yet?",
                  style: TextStyle(color: forgotColor),
                ),
                GestureDetector(
                    child: Text("Create an account",
                        style: TextStyle(color: primaryRed)),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        CupertinoPageRoute(builder: (_) => RegisterPage()),
                      );
                    })
              ],
            ),

            SizedBox(
              height: 10,
            )
            // Create an account
          ],
        ),
      )),
    );
  }
}
