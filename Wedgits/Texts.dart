// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: 400,
            // width: double.infinity,
            height: 100,
            margin: const EdgeInsets.all(20),
            // margin: EdgeInsets.only(left: 20,right: 30),
            // margin: EdgeInsets.symmetric(vertical: 30),
            // margin: EdgeInsets.symmetric(horizontal: 30),
            // margin: EdgeInsets.fromLTRB(10,20,30,40),
            padding: const EdgeInsets.only(
                left: 20, top: 30), // padding to it same properties the margen
            decoration: BoxDecoration(
              color: Colors.blue[200],
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   image: NetworkImage(
              //       "https://storage.googleapis.com/gd-wagtail-prod-assets/original_images/evolving_google_identity_2x1.jpg"),
              // image: AssetImage("imgs/1.jpg"),
              // repeat: ImageRepeat.repeat,
              // ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 7,
                    offset: Offset(0, 0))
              ],
              border: Border.all(color: Colors.red, width: 5),
              // border: Border(
              //     left: BorderSide(color: Colors.red, width: 3),
              //     right: BorderSide(color: Colors.green, width: 10)),
              borderRadius: BorderRadius.circular(10),
              // borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
            ),
            child: const Text(
              "Home Page",
              textAlign: TextAlign.center, // start, end, right, left, justify
              style: TextStyle(
                  fontSize: 30,
                  // color: Colors.red[900],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.5,
                  wordSpacing: 2.9,
                  decoration: TextDecoration.underline,
                  // backgroundColor: Colors.red[100],
                  // ignore: prefer_const_literals_to_create_immutables
                  shadows: [
                    Shadow(
                        color: Colors.yellow,
                        blurRadius: 3,
                        offset: Offset(3, 5))
                  ]),
            )));
  }
}
