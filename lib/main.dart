import 'package:flutter/material.dart';
import 'package:spookyegg/app_color.dart';
import 'package:spookyegg/page/homepage.dart';
import 'package:spookyegg/page/login_page.dart';
import 'package:spookyegg/page/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Urbanist',
      scaffoldBackgroundColor: AppColor.background),
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        '/home':(context) => Homepage(),
        '/signup' :(context) => SignupPage(),
      },
    );
  }
}
