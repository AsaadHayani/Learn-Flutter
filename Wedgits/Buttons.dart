// ignore_for_file: file_names

import 'package:firstapp/Wedgits/Icons.dart' as ic;
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: MaterialButton(
        //   onPressed: () {
        //     print("signup");
        //   },
        //   onLongPress: () {
        //     print("onLongPress");
        //   },
        //   child: Text("MaterialButton"),
        //   elevation: 20,
        //   color: Colors.red,
        //   splashColor: Colors.black,
        //   textColor: Colors.white,
        //   minWidth: 30,
        //   disabledColor: Colors.pink,
        //   shape: Border.all(color: Colors.purple, width: 2),
        // ),

        // body: ElevatedButton(
        //   onPressed: () {
        //     print("signup");
        //   },
        //   onLongPress: () {
        //     print("onLongPress");
        //   },
        //   style: ElevatedButton.styleFrom(
        //       primary: Colors.red,
        //       elevation: 20,
        //       shadowColor: Colors.black,
        //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        //       shape:
        //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        //       textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        //   child: Text("signup"),
        // ),

        // body: ElevatedButton.icon(
        //   onPressed: () {
        //     print("signup");
        //   },
        //   onLongPress: () {
        //     print("onLongPress");
        //   },
        //   style: ElevatedButton.styleFrom(
        //       primary: Colors.red,
        //       elevation: 20,
        //       shadowColor: Colors.black,
        //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        //       shape:
        //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        //       textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        //   label: Text("signup"),
        //   icon: Icon(Icons.ac_unit),
        // ),

        // body: TextButton(
        //   onPressed: () {
        //     print("signup");
        //   },
        //   onLongPress: () {
        //     print("onLongPress");
        //   },
        //   child: Text("signup"),
        //   style: TextButton.styleFrom(
        //       primary: Colors.red,
        //       backgroundColor: Colors.yellow,
        //       elevation: 20,
        //       shadowColor: Colors.black,
        //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        //       shape:
        //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        //       textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        // ),

        // body: OutlinedButton(
        //   onPressed: () {
        //     print("signup");
        //   },
        //   onLongPress: () {
        //     print("onLongPress");
        //   },
        //   style: ButtonStyle(
        //     foregroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
        //     elevation: MaterialStateProperty.all<double>(5),
        //     shadowColor: MaterialStateProperty.all<Color>(Colors.red),
        //   ),
        //   child: Text("signup"),
        // ),

        //    body: IconButton(
        //   onPressed: () {
        //     print("signup");
        //   },
        //   iconSize: 60,
        //   tooltip: 'IconButton',
        //   icon: Icon(
        //     Icons.shop,
        //     size: 50,
        //   ),
        //   color: Colors.red,
        //   splashColor: Colors.black,
        //   disabledColor: Colors.pink,
        // ),

        //    body: InkWell(
        //   onTap: () {
        //     print("signup");
        //   },
        //   child: Container(
        //     alignment: Alignment.center,
        //     child: Text("InkWell"),
        //     color: Colors.red,
        //     padding: EdgeInsets.all(10),
        //     width: 100,
        //     height: 50,
        //   ),
        //   splashColor: Colors.black,
        // ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: Colors.blue,
        //   child: Icon(Icons.add),
        //   splashColor: Colors.red,
        // ),
        // body: ListView(
        //   children: [
        //     Container(
        //       color: Colors.red,
        //       margin: EdgeInsets.all(10),
        //       height: 300,
        //     ),
        //     Container(
        //       color: Colors.red,
        //       margin: EdgeInsets.all(10),
        //       height: 300,
        //     ),
        //     Container(
        //       color: Colors.red,
        //       margin: EdgeInsets.all(10),
        //       height: 300,
        //     ),
        //     Container(
        //       color: Colors.red,
        //       margin: EdgeInsets.all(10),
        //       height: 300,
        //     ),
        //   ],
        // ),

        body: GestureDetector(
      child: Container(
        child: Text("GestureDetector"),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        color: Colors.red,
      ),
      onTap: () {
        print("onTap");
      },
      onTapUp: (Up) {
        print("onTapUp");
      },
      onTapDown: (Down) {
        print("onTapDown");
      },
      onTapCancel: () {
        print("onTapCancel");
      },
      onLongPress: () {
        print("onLongPress");
      },
      onLongPressStart: (press) {
        print("onLongPressStart");
      },
      onLongPressEnd: (End) {
        print("onLongPressEnd");
      },
      onDoubleTap: () {
        print("onDoubleTap");
      },
    ));
  }
}
