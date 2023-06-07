// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  const Rows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Text("one"),
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text("two"),
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text("three"),
              color: Colors.red,
            ),
          ),
        ],
      ),

      // Container(
      //   color: Colors.red,
      //   height: 300,
      //   child: Row(
      //     mainAxisSize: MainAxisSize.max, // min
      //     mainAxisAlignment: MainAxisAlignment
      //         .spaceEvenly, // start, end, center, spaceAround, spaceBetween, spaceEvenly
      //     crossAxisAlignment:
      //         CrossAxisAlignment.center, // start, center, end, baseline, stretch
      //     children: [
      //       Text(
      //         "This is Row",
      //         style: TextStyle(fontSize: 30),
      //       ),
      //       Card(
      //           color: Colors.yellow,
      //           child: Text(
      //             "This is Card into Row",
      //           )),
      //       Image.asset(
      //         "imgs/1.jpg",
      //         width: 100,
      //         height: 100,
      //         fit: BoxFit.fill,
      //       ),
      //     ],
      //   ),
      // )
    );
  }
}
