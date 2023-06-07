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
      child: ListTile(
        title: Text("S10"),
        subtitle: Text("description"),
        leading: Icon(Icons.mobile_friendly),
        trailing: Text("Price 200\$"),
        tileColor: Colors.red,
        onTap: () {
          print("onTap");
        },
        onLongPress: () {
          print("onLongPress");
        },
      ),
    );
  }
}
