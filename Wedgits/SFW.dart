// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Test_State();
  }
}

class Test_State extends State<Test> {
  String str = "Asaad";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$str"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  str = "Alaa";
                });
              },
              child: Text("change"),
            )
          ],
        ),
      ),
    );
  }
}
