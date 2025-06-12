import 'package:flutter/material.dart';
import 'package:playfully_app/styles/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.color, required this.label, required this.stringStyle});
  final Color color;
  final String label;
  final TextStyle stringStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: Text(
          label,
          style: stringStyle,
        ),
      ),
    );
  }
}
