// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: const CircleAvatar(
      radius: 40, backgroundColor: Colors.green,
      // backgroundImage: AssetImage("imgs/1.jpg"),
      child: Text(
        "Mood",
        style: TextStyle(fontSize: 30),
      ),
    ));
  }
}
