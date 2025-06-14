import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playfully_app/pages/browse_page.dart';
import 'package:playfully_app/pages/signin_or_register.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  static String id = "auth_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const BrowsePage();
            } else {
              return const SignOrRegister();
            }
          }),
    );
  }
}
