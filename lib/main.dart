import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chatScreen.dart';

void main() {
  runApp(DefaultTabController(
    length: 4,
    child: MaterialApp(
      home: WhatsAppHome(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class WhatsAppHome extends StatefulWidget {
  WhatsAppHome({Key key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20.0),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Color(0xff075E54),
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            )
          ],
        ),
      ),
      body: SafeArea(
          child: TabBarView(
        children: [
          Text('01'),
          ChatScreen(),
          Text('01'),
          Text('01'),
        ],
      )),
    );
  }
}

Widget whatsAppAppBar(BuildContext context) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(color: Color(0xff075E54)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(15.0),
            child: Text(
              'WhatsApp',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0),
            ),
          ),
          Row(
            children: [
              Container(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ));
}
