// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  var num = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Column(
        children: [
          Slider(
              activeColor: Colors.red,
              inactiveColor: Colors.black,
              value: num,
              min: 0.0,
              max: 100.0,
              onChanged: (val) {
                print(val);
                setState(() {
                  num = val;
                });
              }),
          Text("Number: $num"),
        ],
      ),
    );
  }
}
