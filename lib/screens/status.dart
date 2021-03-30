import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.black54,
            child: Icon(
              Icons.create,
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
