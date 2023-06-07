// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Stacks extends StatelessWidget {
  const Stacks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(color: Colors.black54),
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/my/facebook.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          const Positioned(
              left: 30,
              child: Text(
                "Hello",
                style: TextStyle(color: Colors.white, fontSize: 30),
              )),
          const Positioned(
              right: 30,
              top: 50,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "Software",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ))
        ],
      ),

      // Container(
      //     color: Colors.red,
      //     width: 400,
      //     height: 400,
      //     child: Stack(
      //       alignment: Alignment
      //           .center, // center, centerRight, bottomCenter, bottomLeft, bottomRight, centerLeft, topLeft, topRight
      //       children: [
      //         Container(
      //           color: Colors.green,
      //           width: 300,
      //           height: 300,
      //         ),
      //         Container(
      //           color: Colors.brown,
      //           width: 200,
      //           height: 200,
      //         ),
      //       ],
      //     )),
    );
  }
}
