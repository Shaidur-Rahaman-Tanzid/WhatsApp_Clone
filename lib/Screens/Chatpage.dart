import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Customcart.dart';
import 'package:whatsapp/Screens/groupcart.dart';
import 'package:whatsapp/Screens/Fluttergrupcart.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat),
        backgroundColor: Color(0xFF075E54),
      ),
      body: ListView(
        children: [
          Customcart(),
          Groupcart(),
          Fluttergrupcart(),
          Customcart(),
          Customcart(),
          Customcart(),
          Customcart(),
          Customcart(),
          Customcart(),
        ],
      ),
    );
  }
}
