// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  ScrollController? scrollcontrol;
  @override
  void initState() {
    scrollcontrol = new ScrollController();
    scrollcontrol!.addListener(() {
      print("Scroll: ${scrollcontrol!.offset}");
      print("Max Scroll: ${scrollcontrol!.position.maxScrollExtent}");
      print("Min Scroll: ${scrollcontrol!.position.minScrollExtent}");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        controller: scrollcontrol,
        children: [
          ElevatedButton(
              onPressed: () {
                // scrollcontrol!.jumpTo(scrollcontrol!.position.maxScrollExtent);
                scrollcontrol!.animateTo(
                    scrollcontrol!.position.maxScrollExtent,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeIn);
              },
              child: Text("GotoBottom")),
          ...List.generate(
              10,
              (index) => Container(
                    child: Text("Container ${index + 1}"),
                    color: index.isEven ? Colors.red : Colors.blue,
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  )),
          ElevatedButton(
              onPressed: () {
                // scrollcontrol!.jumpTo(0.0);
                scrollcontrol!.animateTo(0.0,
                    duration: Duration(seconds: 1), curve: Curves.easeIn);
              },
              child: Text("GotoTop")),
        ],
      ),
    );
  }
}
