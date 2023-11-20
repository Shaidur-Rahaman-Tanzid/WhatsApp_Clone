import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor:  Color(0xFF075E54), hintColor:Color(0xFF128C7E)),
      home:  splashscreen(),


    );
  }
}

