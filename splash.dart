import 'dart:async';
import 'package:cinepolis/login_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _InterfaceScreenState createState() => _InterfaceScreenState();
}

class _InterfaceScreenState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      });
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08275D),
      body: Center(
        child: Image.asset('assets/LogoCinepolis3.jpg', width: 300),
      ),
    );
  }
}