import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp/homescreen.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WhatsAppInterface()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff080F13), // Set background color here
        child: Center(
          child: Image.asset('assets/apple.png', width: 100, height: 100),
        ),
      ),
    );
  }
}
