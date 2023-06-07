// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  bool first = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossFade'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: AnimatedCrossFade(
                  firstChild: Container(
                    child: Text("Two"),
                    color: Colors.yellowAccent,
                    width: 100,
                    height: 200,
                  ),
                  secondChild: Container(
                    child: Text("One"),
                    color: Colors.pink,
                    width: 100,
                    height: 200,
                  ),
                  crossFadeState: first
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(seconds: 2))),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  first = !first;
                });
              },
              child: const Text('Click Trigger To Animate')),
        ],
      ),
    );
  }
}
