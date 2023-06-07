// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_new/Animation/Route/PageTwo.dart';
import 'package:flutter_new/Animation/Route/animateroute.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageOne'),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(ShowSlide(Page: PageTwo()));
                  },
                  child: const Text('Click Go To PageTwo')),
            ],
          ),
        ),
      ),
    );
  }
}
