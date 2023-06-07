// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: Colors.red,
        elevation: 100,
        shadowColor: Colors.red,
        // shape: Border.all(color: Colors.green, width: 5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.green, width: 5)),
        child: Text(
          "This is Card",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
