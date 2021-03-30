import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat_model.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List<ChatModel> chat = [
    ChatModel(name: "Jon Jones",message: "How are you?",time: "05:11"),
    ChatModel(name: "Anderson Silva",message: "How are you?",time: "05:11"),
    ChatModel(name: "Israel Adesanya",message: "How are you?",time: "05:11"),
    ChatModel(name: "Francis Ngonnou",message: "How are you?",time: "05:11"),
    ChatModel(name: "Nigerian Nightmare",message: "How are you?",time: "05:11")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black54,
        child: ListView.builder(
            itemCount: chat.length,
            itemBuilder: (context,index)
          {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start, //change here don't //worked
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.brown,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              chat[index].name!,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              chat[index].message!,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        new Spacer(),
                        Text(chat[index].time!)
                      ],
                    ),
                  ),
                ),
              );
          }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: Icon(Icons.chat,color: Colors.white,),
      ),
    );
  }
}
