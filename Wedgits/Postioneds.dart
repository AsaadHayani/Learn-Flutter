// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Postioneds extends StatelessWidget {
  const Postioneds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.red,
            width: 400,
            height: 400,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  width: 200,
                  height: 200,
                  top: 300,
                  right: 20,
                  child: Container(
                    color: Colors.black,
                    child: Text(
                      "This is Positioned one",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ),
                ),
                Positioned(
                  width: 200,
                  height: 200,
                  top: 200,
                  left: 20,
                  child: Container(
                    color: Colors.blue,
                    child: Text(
                      "This is Positioned two",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                  ),
                ),
              ],
            )));
  }
}
