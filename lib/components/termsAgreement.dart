import 'package:flutter/material.dart';
import 'package:playfully_app/styles/colors.dart';

Padding termsText() {
  return Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: Center(
      child: Column(
        children: [
          Text(
            "By selecting one or the other, you are agreeing to the",
            style: TextStyle(color: privacyTextColor),
          ),
          Row(
            mainAxisSize: MainAxisSize.min, // hug its children horizontally
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Terms of Services", style: TextStyle(color: primaryRed)),
              Text(" & ", style: TextStyle(color: privacyTextColor)),
              Text("Privacy Policy", style: TextStyle(color: primaryRed)),
            ],
          )
        ],
      ),
    ),
  );
}
