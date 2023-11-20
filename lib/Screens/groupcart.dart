import 'package:flutter/material.dart';
import 'package:flutter/src/material/divider.dart';

class Groupcart extends StatefulWidget {
  const Groupcart({super.key});

  @override
  State<Groupcart> createState() => _GroupcartState();
}

class _GroupcartState extends State<Groupcart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          textColor: Colors.grey,
          leading: CircleAvatar(
            child: Icon(Icons.groups,
              size: 35,
              color: Colors.white,
            ),
            backgroundColor: Colors.grey,
            radius: 30,
          ),
          title: Text("Dart Community",
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
              Text("Hi Everybody",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          trailing: Text("17:23"),
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
