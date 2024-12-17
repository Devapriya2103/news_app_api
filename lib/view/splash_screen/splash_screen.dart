import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app_api/view/login_screen/login_screen.dart';
import 'package:news_app_api/view/utils/colorconstant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
      ),
      );
    },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstant.PRIMARY,
      body: Center(
        child: Text("NEWS APP",
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
      ),
    );
  }
}