import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp/Screens/Homescreen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override

  void initState() {
    super.initState();
   // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
 // Timer(duration(seconds: 3) , () { })
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_)=> Homescreen()));
    });
  }
  @override
  // void dispose() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //   overlays: SystemUiOverlay.values);
  //   super.dispose();
  // }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/whatsapp.png"),
                  fit:BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 300,),
          Center(
            child: Container(
              child: Text("FORM"),
            ),
          ),
        //  const SizedBox(height: 20,),
          Center(
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/meta.png"),
                  fit: BoxFit.cover,
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
