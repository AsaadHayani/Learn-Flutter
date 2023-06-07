// ignore_for_file: file_names

import 'package:flutter/material.dart';

class IndexedStacks extends StatelessWidget {
  const IndexedStacks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: 1,
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.green,
          ),
          Container(
            width: 400,
            height: 400,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
