// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List imgs = [
    {"url": "imgs/1.png"},
    {"url": "imgs/2.png"},
    {"url": "imgs/3.png"},
    {"url": "imgs/4.png"},
    {"url": "imgs/5.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 300,
              child: PageView.builder(
                  itemCount: imgs.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      imgs[index]["url"],
                      fit: BoxFit.fill,
                    );
                  })),
        ],
      ),
    );
  }
}
