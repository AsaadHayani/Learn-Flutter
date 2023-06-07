// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  bool mood = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            // Text(
            //               "Switch: Chooce Mood",
            //               style: TextStyle(fontSize: 30),
            //             ),
            // Switch(
            //     activeColor: Colors.red,
            //     activeTrackColor: Colors.green,
            //     inactiveTrackColor: Colors.black,
            //     inactiveThumbColor: Colors.grey,
            //     value: mood,
            //     onChanged: (val) {
            //       setState(() {
            //         mood = val;
            //       });
            //     }),
            SwitchListTile(
                title: Text("Iraq"),
                subtitle: Text("description"),
                secondary: Icon(Icons.flag),
                value: mood,
                controlAffinity: ListTileControlAffinity.trailing,
                isThreeLine: true,
                onChanged: (val) {
                  setState(() {
                    mood = val;
                  });
                }));
  }
}
