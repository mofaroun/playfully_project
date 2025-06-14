import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playfully_app/components/custom_button.dart';
import 'package:playfully_app/components/custom_elevated_button.dart';
import 'package:playfully_app/components/termsAgreement.dart';
import 'package:playfully_app/pages/register_page.dart';
import 'package:playfully_app/styles/colors.dart';
import 'signin_page.dart';

class SignOrRegister extends StatelessWidget {
  static String id = "signin_or_register";
  const SignOrRegister({super.key});

  @override
  Widget build(BuildContext context) {
    VoidCallback gotoPage(bool login) {
      return () {
        // Navigator.pushNamed(context, SignInPage.id);
        Navigator.of(context).push(CupertinoPageRoute(
            builder: (_) => login ? SignInPage() : RegisterPage()));
      };
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              // Text widget -> Experience Music
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Experience Music",
                  style: mainScreen,
                ),
              ),
              // Text Playfully
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "PlayFully.",
                  style: mainScreen,
                ),
              ),
              // Login button
              SizedBox(
                height: 50,
              ),

              // Login Button
              // CustomButton(
              //   color: primaryRed,
              //   label: "Login",
              //   stringStyle: buttonLabel,
              // ),

              // //Signup Button
              // CustomButton(
              //   color: aWhite,
              //   label: "Signup",
              //   stringStyle: abuttonLabel,
              // ),

              CustomElevatedButton(
                buttonStyle: buttonLabel,
                buttonText: "Login",
                login: true,
                onTap: gotoPage(true),
              ),
              CustomElevatedButton(
                buttonStyle: abuttonLabel,
                buttonText: "Signup",
                login: false,
                onTap: gotoPage(false),
              ),

              // Privacylabel

              termsText()
            ],
          ),
        )),
      ),
    );
  }
}
