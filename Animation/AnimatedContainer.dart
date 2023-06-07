// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  double myWidth = 100;
  double myHeight = 100;
  Color myColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              curve: Curves.easeInBack,
              color: myColor,
              width: myWidth,
              height: myHeight,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  myWidth = 300;
                  myHeight = 300;
                  myColor = Colors.green;
                });
              },
              child: const Text('Click Trigger To Animate')),
        ],
      ),
    );
  }
}
