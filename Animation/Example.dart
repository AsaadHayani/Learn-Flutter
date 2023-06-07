// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  double he = 300;
  double lf = 10;
  double pt = 100;
  double fs = 20;
  Color co = Colors.red;
  Color cof = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: 500,
            ),
            AnimatedPositioned(
                left: lf,
                bottom: 0,
                child: Container(
                  width: 75,
                  height: he,
                  color: co,
                  child: Padding(
                      padding: EdgeInsets.only(top: pt),
                      child: Container(
                        color: Colors.black12,
                        child: Column(
                          children: [
                            AnimatedDefaultTextStyle(
                                child: Text("PHP"),
                                style: TextStyle(fontSize: fs, color: cof),
                                duration: Duration(seconds: 1))
                          ],
                        ),
                      )),
                ),
                duration: Duration(seconds: 1))
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      lf = 100;
                      he = 200;
                      pt = 100;
                      fs = 30;
                      co = Colors.green;
                      cof = Colors.yellowAccent;
                    });
                  },
                  child: Text("Start")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      lf = 10;
                      he = 300;
                      pt = 100;
                      fs = 16;
                      co = Colors.green;
                      cof = Colors.yellowAccent;
                    });
                  },
                  child: Text("End"))
            ],
          )
        ],
      ),
    );
  }
}
