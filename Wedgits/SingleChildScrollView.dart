// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SingleChild_ScrollView extends StatelessWidget {
  const SingleChild_ScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, //vertical,horizontal
        child: Column(
          children: [
            Container(
              width: 90,
              height: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.blue,
              child: const Text("one"),
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
            Container(
              width: 90,
              height: 100,
              margin: EdgeInsets.all(10),
              color: Colors.pink,
            ),
            Container(
              width: 90,
              height: 100,
              margin: EdgeInsets.all(10),
              color: Colors.cyanAccent,
            ),
          ],
        ),
      ),
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal, //vertical,horizontal
      //   child: Row(
      //     children: [
      //       Container(
      //         width: 90,
      //         height: 100,
      //         margin: const EdgeInsets.all(10),
      //         color: Colors.blue,
      //         child: const Text("one"),
      //       ),
      //       Container(
      //         width: 90,
      //         height: 100,
      //         margin: EdgeInsets.all(10),
      //         color: Colors.red,
      //       ),
      //       Container(
      //         width: 90,
      //         height: 100,
      //         margin: EdgeInsets.all(10),
      //         color: Colors.black,
      //       ),
      //       Container(
      //         width: 90,
      //         height: 100,
      //         margin: EdgeInsets.all(10),
      //         color: Colors.yellow,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
