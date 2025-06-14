import 'package:flutter/material.dart';
import 'package:playfully_app/styles/colors.dart';

class CustomTextField extends StatelessWidget {
  final String textHint;
  final bool isPw;
  final TextEditingController? textController;

  const CustomTextField({
    super.key,
    required this.textHint,
    this.isPw = false,
    this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: EdgeInsets.only(top: 10.0, left: 8, right: 8),
      // padding: EdgeInsets.symmetric(horizontal: 4, vertical: 5),
      child: TextField(
        style: TextStyle(color: aWhite),
        obscureText: isPw,
        controller: textController,
        decoration: InputDecoration(
          hintText: textHint,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: aWhite, width: 1.5)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: aWhite, width: 1.5)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: aWhite, width: 1.5)),
        ),
      ),
    );
  }
}
