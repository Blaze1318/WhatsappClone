import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.black54,
            child: Icon(
                Icons.video_call,
            ),
            onPressed: () {
              //...
            },
            heroTag: null,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(
                Icons.add_call
            ),
            onPressed: () {},
            heroTag: null,
          )
        ]
    )
    );
  }
}
