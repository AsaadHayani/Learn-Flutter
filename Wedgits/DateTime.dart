// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  DateTime dateNow = DateTime.now();
  DateTime dateNow2 = DateTime.now();
  DateTime dateAdd = DateTime.now().add(Duration(days: 5));
  DateTime dateSub = DateTime.now().subtract(Duration(days: 5));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Flutter Apps")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print(DateTime.now().year);
                print(DateTime.now().add(Duration(days: 5)));
                print(DateTime.now().subtract(Duration(days: 5)));
                print(dateNow.isAfter(dateAdd));
                print(dateSub.isBefore(dateAdd));
                print(dateNow.isAtSameMomentAs(dateNow2));
                // setState(() {
                //   dateTime=val;
                // });
              },
              child:const Text(
                'Show DateTime'
              ),
            )
          ],
        ),
      ),
    );
  }
}
