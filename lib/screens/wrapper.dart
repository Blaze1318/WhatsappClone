import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls.dart';
import 'package:whatsapp_clone/screens/chat_list.dart';
import 'package:whatsapp_clone/screens/status.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black54,
            actions: <Widget>[
              Icon(Icons.search),
              Icon(Icons.settings)
            ],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera_alt_outlined)),
                Tab(text: "CHATS",),
                Tab(text: "STATUS",),
                Tab(text: "CALLS",),
              ],
            ),
            title: Text('WhatsApp'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.camera_alt_outlined),
             ChatList(),
              Status(),
              Calls()
            ],
          ),
        ),
      ),
    );
  }
}
