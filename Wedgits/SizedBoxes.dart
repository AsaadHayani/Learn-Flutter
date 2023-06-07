// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SizedBoxes extends StatelessWidget {
  const SizedBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Text("one"),
          SizedBox(
            width: 100,
          ),
          Text("two")
        ],
      ),
    );
  }
}
