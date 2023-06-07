// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageTwo'),
      ),
      body: Container(
        color: Colors.yellowAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("main");
                  },
                  child: const Text('Click Go To PageMain')),
            ],
          ),
        ),
      ),
    );
  }
}
