import 'package:flutter/material.dart';
import 'package:playfully_app/components/custom_button.dart';
import 'package:playfully_app/pages/register_page.dart';
import 'package:playfully_app/pages/signin_or_register.dart';
import 'package:playfully_app/pages/signin_page.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignOrRegister.id,
      routes: {
        SignOrRegister.id: (context) => SignOrRegister(),
        SignInPage.id: (context) => SignInPage(),
        RegisterPage.id: (context) => RegisterPage(),
      },
    );
  }
}
