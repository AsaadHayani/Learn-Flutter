// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Icons extends StatelessWidget {
  static IconData? shop;

  const Icons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Icon(
          Icons.shop,
          size: 50,
          color: Colors.pink,
        ),
      ),
    );
  }
}
