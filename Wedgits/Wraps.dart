// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Wraps extends StatelessWidget {
  const Wraps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        direction: Axis.horizontal, //vertical
        children: [
          Container(
            width: 90,
            height: 100,
            margin: EdgeInsets.all(10),
            color: Colors.blue,
          ),
          Container(
            width: 90,
            height: 100,
            margin: EdgeInsets.all(10),
            color: Colors.red,
          ),
          Container(
            width: 90,
            height: 100,
            margin: EdgeInsets.all(10),
            color: Colors.black,
          ),
          Container(
            width: 90,
            height: 100,
            margin: EdgeInsets.all(10),
            color: Colors.yellow,
          ),
        ],
      ),

      // body: Wrap(
      //   direction: Axis.horizontal, //vertical,horizontal
      //   children: [
      //     Container(
      //       width: 90,
      //       height: 100,
      //       margin: EdgeInsets.all(10),
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 90,
      //       height: 100,
      //       margin: EdgeInsets.all(10),
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 90,
      //       height: 100,
      //       margin: EdgeInsets.all(10),
      //       color: Colors.black,
      //     ),
      //     Container(
      //       width: 90,
      //       height: 100,
      //       margin: EdgeInsets.all(10),
      //       color: Colors.yellow,
      //     ),
      //   ],
      // ),
    );
  }
}
