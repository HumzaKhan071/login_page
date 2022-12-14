import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/Screens/darktheme/signin_page.dart';
import 'package:login_page/Screens/login_page.dart';

import 'Screens/darktheme/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "DMSans"),
        home: const SignUpPage());
  }
}
