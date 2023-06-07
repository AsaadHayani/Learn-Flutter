import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  _ResponsiveState createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print("Screen Height: ${size.height}");
    print("Screen width: ${size.width}");
    EdgeInsets stb = MediaQuery.of(context).padding;
    print("StateBar Height LTRB: ${stb}");
    AppBar appBar = AppBar();
    print("AppBar Height: ${appBar.preferredSize.height}");
    final bodyHeight = size.height - appBar.preferredSize.height - stb.top;
    print("Body Height: ${bodyHeight}");
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Container(
            // width: size.width * 1,
            height: bodyHeight * 0.33,
            color: Colors.green,
          ),
          Container(
            // width: size.width * 1,
            height: bodyHeight * 0.33,
            color: Colors.white,
          ),
          Container(
            // width: size.width * 1,
            height: bodyHeight * 0.34,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
