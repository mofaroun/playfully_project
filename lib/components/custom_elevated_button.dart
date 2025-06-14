import 'package:flutter/material.dart';
import 'package:playfully_app/pages/signin_page.dart';
import 'package:playfully_app/styles/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final TextStyle buttonStyle;
  final String buttonText;
  final bool login;
  final VoidCallback? onTap;

  const CustomElevatedButton(
      {super.key,
      required this.buttonStyle,
      required this.buttonText,
      this.login = true,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: login ? primaryRed : aWhite,
            foregroundColor: login ? aWhite : primaryRed,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              buttonText,
              style: buttonStyle,
            ),
          ),
        ),
      ),
    );
  }
}
