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
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('A SnackBar has been shown.'),
                  backgroundColor: Colors.red,
                  duration: Duration(seconds: 5),
                  padding: EdgeInsets.all(5),
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.all(10),
                ),
              );
            },
            child: Text("Show Snackbar")));
  }
}
