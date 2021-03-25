import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat_list.dart';
import 'package:whatsapp_clone/screens/wrapper.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                    child: Image.asset("assets/whatsapplogo.png",
                      height: 200,
                      width: 200,),
                  ),
                ),
                SizedBox(height: 150,),
                Text("From"),
                Text("FACEBOOK",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.green
                  ),)
              ],
            )
        ),
      ),
    );
  }
  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, route);
  }
  route() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return Wrapper();
    }));
  }
}



