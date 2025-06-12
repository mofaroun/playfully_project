import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  static String id = "register_page";

  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Scaffold(
        appBar: AppBar(
          title: Text("Register Page"),
        ),
      )),
    );
  }
}
