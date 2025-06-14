// Browse Page

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playfully_app/pages/signin_or_register.dart';
import 'package:playfully_app/styles/colors.dart';

class BrowsePage extends StatelessWidget {
  static String id = "browse_page";
  const BrowsePage({super.key});

  void logout(BuildContext context) {
    FirebaseAuth.instance.signOut();
    Navigator.of(context).pushAndRemoveUntil(
      CupertinoPageRoute(builder: (_) => SignOrRegister()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        actions: [
          IconButton(
              onPressed: () => logout(context),
              icon: Icon(
                Icons.logout,
                color: aWhite,
              ))
        ],
        title: Text(
          "Browse",
          style: TextStyle(color: aWhite),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Text(
              "Hello, ${FirebaseAuth.instance.currentUser?.displayName}",
              style: TextStyle(color: aWhite,
              fontSize: 40),
            )
          ],
        ),
      )),
    );
  }
}
