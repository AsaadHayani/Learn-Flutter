// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        title: Text("Title to App"),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.red,
        shadowColor: Colors.green,
        elevation: 25,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }
}
