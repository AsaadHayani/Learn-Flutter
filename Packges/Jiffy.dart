// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime date = DateTime.now();
  changeLocal() async {
    await Jiffy.locale("ar");
  }

  @override
  void initState() {
    changeLocal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Apps"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed',
            ),
            ElevatedButton(
              onPressed: () {
                print(Jiffy(date).EEEE);
              },
              child: const Text(
                'DateTime',
              ),
            )
          ],
        ),
      ),
    );
  }
}
