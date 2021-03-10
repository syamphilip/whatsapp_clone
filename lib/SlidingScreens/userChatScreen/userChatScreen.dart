import 'package:flutter/material.dart';

class UserChatScreen extends StatefulWidget {
  final String userName;
  final String onoff;
  final String imagePro;
  UserChatScreen({Key key, @required this.userName, this.onoff, this.imagePro})
      : super(key: key);

  @override
  _UserChatScreenState createState() => _UserChatScreenState();
}

class _UserChatScreenState extends State<UserChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075E54),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.imagePro),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.userName),
                    Text(
                      widget.onoff,
                      style: TextStyle(fontSize: 11.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            Icon(
              Icons.video_call,
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.call,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image(
              image: NetworkImage(
                'https://wallpapercave.com/wp/wp5149772.jpg',
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width),
        ));
  }
}
