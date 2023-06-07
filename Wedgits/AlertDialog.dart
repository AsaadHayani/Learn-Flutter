// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Title"),
                    content: Text("Content Content Content"),
                    titlePadding: EdgeInsets.all(20),
                    contentPadding: EdgeInsets.all(20),
                    backgroundColor: Colors.red,
                    titleTextStyle: TextStyle(color: Colors.blue, fontSize: 20),
                    contentTextStyle:
                        TextStyle(color: Colors.cyan, fontSize: 20),
                    actions: [
                      MaterialButton(
                        onPressed: () {
                          print("ok");
                        },
                        child: Text("ok",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                      MaterialButton(
                        onPressed: () {
                          print("cancel");
                        },
                        child: Text("cancel",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      )
                    ],
                    actionsPadding: EdgeInsets.all(10),
                  );
                });
          },
          child: Text("Show Alert")),
    );
  }
}
