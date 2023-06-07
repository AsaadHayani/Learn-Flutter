// ignore_for_file: file_names

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  double fs = 20;
  Color co = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedDefaultTextStyle'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedDefaultTextStyle(
              child: Text("Asaad"),
              style: TextStyle(fontSize: fs, color: co),
              duration: Duration(seconds: 1),
              curve: Curves.bounceInOut,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  fs = 30;
                  co = Colors.green;
                });
              },
              child: Text("Animated"))
        ],
      ),
    );
  }
}
