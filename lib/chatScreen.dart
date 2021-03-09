import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:whatsapp_clone/UserChatClass.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  UserData userData = UserData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: sampleData.length,
        itemBuilder: (context, index) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width,
              color: Colors.white60,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(sampleData[index].image),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(sampleData[index].name),
                    Text(sampleData[index].time),
                  ],
                ),
                subtitle: Text(sampleData[index].msg),
              ));
        });
  }
}
