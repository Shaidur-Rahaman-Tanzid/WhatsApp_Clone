import 'package:flutter/material.dart';
import 'package:flutter/src/material/divider.dart';

class Customcart extends StatefulWidget {
  const Customcart({super.key});

  @override
  State<Customcart> createState() => _CustomcartState();
}

class _CustomcartState extends State<Customcart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          textColor: Colors.grey,
          leading: CircleAvatar(
            child: Icon(Icons.person,
              size: 35,
              color: Colors.white,
            ),
            backgroundColor: Colors.grey,
            radius: 30,
          ),
          title: Text("John Doe",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.done_all_outlined),
              SizedBox(width: 2,),
              Text("Hey there, I'm using WhatsApp",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          trailing: Text("15:01"),
        ),
     Padding(
      padding: EdgeInsets.only(right: 20,left: 80),
       child: Divider(
        thickness: 1,
         ),
        )
      ],
    );


  }
}
