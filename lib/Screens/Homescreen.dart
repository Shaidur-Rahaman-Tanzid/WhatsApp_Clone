import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Chatpage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}
class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {

  late TabController _controller;

  @override
  void initState(){
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('WhatsApp',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color(0xFF075E54),
        toolbarHeight: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ),
         Padding(
           padding: const EdgeInsets.only(top: 10),
           child: PopupMenuButton<String>(itemBuilder: (BuildContext context){
             return [
               PopupMenuItem(child: Text('New Group'),value:'New Group' ,),
               PopupMenuItem(child: Text('New Brodcast'),value:'New Brodcast' ,),
               PopupMenuItem(child: Text('Settings'),value:'Settings' ,),
             ];
           }),
         )
        ],
        bottom: TabBar(
         // labelColor: Color(0xFF075E54),
          indicator: UnderlineTabIndicator(borderSide: BorderSide(color: Colors.white)
          ),

          controller: _controller,
          tabs: [
         Container( width: 25,
             child: Tab(icon: Icon(Icons.groups),)),
          Container( width: 80,
              child: Tab(text: "Chats",)),
          Container( width: 80,
              child: Tab(text: "Updates")),
          Container( width: 80,
              child: Tab(text: "Calls")),
        ],

        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text('Groups'),
         Chatpage(),
          Text('Status'),
          Text('Calls'),
        ],
      ),
    );
  }
}
