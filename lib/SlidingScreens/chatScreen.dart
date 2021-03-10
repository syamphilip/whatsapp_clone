import 'package:flutter/material.dart';
import 'package:whatsapp_clone/SlidingScreens/userChatScreen/userChatScreen.dart';
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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25D366),
        child: Icon(Icons.message),
        onPressed: () {},
      ),
      body: ListView.builder(
          itemCount: sampleData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserChatScreen(
                            userName: sampleData[index].name,
                            onoff: 'Online',
                            imagePro: sampleData[index].image,
                          )),
                );
              },
              child: Container(
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
                  )),
            );
          }),
    );
  }
}
