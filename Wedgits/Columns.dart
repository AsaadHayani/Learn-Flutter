// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Columns extends StatelessWidget {
  const Columns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Text("one"),
              color: Colors.green,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text("two"),
              color: Colors.blue,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text("three"),
              color: Colors.red,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
