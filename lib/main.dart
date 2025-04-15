import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/homescreen.dart';
import 'package:whatsapp/splashscreen.dart';
import '../../triptek/assets/intro.dart';
import 'package:whatsapp/triptrek/splash1.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // You can customize this theme
      home: Intro(),
    );
  }
}
