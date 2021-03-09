import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  CallScreen({Key key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25D366),
        child: Icon(Icons.phone),
        onPressed: () {},
      ),
      body: Container(),
    );
  }
}
