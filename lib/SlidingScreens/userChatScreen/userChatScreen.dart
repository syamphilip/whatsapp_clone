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
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/bg.jpg'),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
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
          body: Stack(
            children: [
              Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.001,
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.all(10.0),
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(25.0)),
                              color: Colors.white),
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: 50.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.sentiment_very_satisfied,
                                color: Colors.grey,
                              ),
                              Container(
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.all(
                                        new Radius.circular(25.0)),
                                    color: Colors.white),
                                width: MediaQuery.of(context).size.width * 0.40,
                                height: 50.0,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Type a message',
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: const EdgeInsets.all(10.0),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.7),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(25.7),
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.attach_file,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.camera_alt,
                                color: Colors.grey,
                              ),
                            ],
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.height * 0.09,
                        decoration: BoxDecoration(
                          color: Color(0xff075E54),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
