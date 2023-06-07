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
    return Scaffold(
      appBar: AppBar(
        title: Text("RichText"),
      ),
      body: Container(
        color: Colors.red,
        child: RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: "Screen:", style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text: "class _TestState extends State<Test>",
              style: TextStyle(fontWeight: FontWeight.bold))
        ])),
      ),
    );
  }
}
