// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SingleChild_ScrollView extends StatelessWidget {
  const SingleChild_ScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("text one"),
          Divider(
            color: Colors.pink,
            height: 30,
            thickness: 3,
          ),
          Text("text two"),
        ],
      ),

      // Row(
      //   children: [
      //     Text("text one"),
      //     VerticalDivider(
      //       color: Colors.pink,
      //       width: 30,
      //       thickness: 3,
      //     ),
      //     Text("text two"),
      //   ],
      // ),
    );
  }
}
