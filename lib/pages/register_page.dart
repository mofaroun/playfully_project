import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playfully_app/components/custom_elevated_button.dart';
import 'package:playfully_app/components/custom_textfield.dart';
import 'package:playfully_app/components/display_message.dart';
import 'package:playfully_app/pages/signin_page.dart';
import 'package:playfully_app/styles/colors.dart';

class RegisterPage extends StatefulWidget {
  static String id = "signin_page";

  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController pwController = TextEditingController();

  final TextEditingController confirmPwController = TextEditingController();

  void registerUser() async {
    // Loading Circle
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));

    // Check Passwords

    if (pwController.text != confirmPwController.text) {
      Navigator.pop(context);
      displayMessage("Passwords do not match.", context);
    } else {
      // Create User

      try {
        UserCredential? userCred = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: pwController.text);
        Navigator.pop(context);
      } catch (e) {
        Navigator.pop(context);
        debugPrint(e.toString());
        displayMessage(e.toString(), context);
      }
    }
  }

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
                // Row(children: [
                //   Expanded(child: CustomTextField(textHint: "First Name")),
                //   Expanded(child: CustomTextField(textHint: "Last Name"))
                // ],),
                CustomTextField(
                  textHint: "Email",
                  textController: emailController,
                ),
                // Password Field
                CustomTextField(
                  textHint: "Password",
                  isPw: true,
                  textController: pwController,
                ),
                CustomTextField(
                  textHint: "Confirm Password",
                  isPw: true,
                  textController: confirmPwController,
                ),

                // Login Button
                SizedBox(
                  height: 15,
                ),

                CustomElevatedButton(
                  buttonStyle: buttonLabel,
                  buttonText: "Create Account",
                  onTap: () {
                    debugPrint('Implement Account Creation Here');
                    registerUser();
                  },
                ),
                // Forgotten Password
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: forgotColor),
                    ),
                    GestureDetector(
                      child: Text(
                        " Log in.",
                        style: TextStyle(color: primaryRed),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          CupertinoPageRoute(builder: (_) => SignInPage()),
                        );
                      },
                    )
                  ],
                )
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
