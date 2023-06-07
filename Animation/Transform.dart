// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  double valRot = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform'),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Transform.scale(
              //   scale: 2,
              //   child: Container(
              //     child: Text("scale"),
              //     color: Colors.yellowAccent,
              //     width: 15,
              //     height: 15,
              //   ),
              // ),
              // Transform.translate(
              //   offset: Offset(10, -20),
              //   child: Container(
              //     child: Text("translate"),
              //     color: Colors.yellowAccent,
              //     width: 50,
              //     height: 50,
              //   ),
              // ),
              // Transform.rotate(
              //   angle: valRot,
              //   origin: Offset(-50, -100),
              //   child: Container(
              //     child: Text("rotate"),
              //     color: Colors.yellowAccent,
              //     width: 100,
              //     height: 200,
              //   ),
              // ),
              // Slider(
              //   value: valRot,
              //   onChanged: (val) {
              //     setState(() {
              //       valRot = val;
              //     });
              //   },
              //   min: 0,
              //   max: 2 * 3.14,
              // ),
              // Text('$valRot'),
              Transform(
                transform: Matrix4.rotationZ(3.14 / 4)
                  ..scale(2.0)
                  ..translate(60.0),
                child: Container(
                  child: Text("rotationZ,scale,translate"),
                  color: Colors.yellowAccent,
                  width: 100,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
