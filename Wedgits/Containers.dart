// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: 300,
        child: Column(
          mainAxisSize: MainAxisSize.max, // min
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // start, end, center, spaceAround, spaceBetween, spaceEvenly
          crossAxisAlignment: CrossAxisAlignment
              .center, // start, center, end, baseline, stretch
          children: [
            const Text(
              "This is Column",
              style: TextStyle(fontSize: 30),
            ),
            const Card(
                color: Colors.yellow,
                child: Text(
                  "This is Card into Column",
                )),
            Image.asset(
              "imgs/1.jpg",
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
