// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  PageController? pagec;
  @override
  void initState() {
    // super.initState();
    pagec = new PageController(
        initialPage: 2, viewportFraction: 0.7 //حجم الصورة من الشاشة
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            child: PageView(
              scrollDirection: Axis.vertical,
              reverse: true,
              controller: pagec,
              onPageChanged: (index) {
                print(index);
              },
              children: [
                Image.asset(
                  'imgs/1.png',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'imgs/2.png',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'imgs/3.png',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'imgs/4.png',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'imgs/5.png',
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                pagec!.animateToPage(2,
                    duration: Duration(seconds: 1), curve: Curves.easeIn);
              },
              child: Text("Home"))
        ],
      ),
    );
  }
}
