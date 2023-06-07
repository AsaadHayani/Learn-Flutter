// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AwesomeDialog'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.SUCCES,
                          animType: AnimType.BOTTOMSLIDE,
                          width: 300,
                          title: 'Dialog Title',
                          body: TextFormField(),
                          desc: 'Dialog description here.............',
                          btnCancelOnPress: () {},
                          btnCancelColor: Colors.black,
                          btnOkOnPress: () {},
                          btnOkColor: Colors.pink)
                      .show();
                },
                child: const Text('ShowAwesomeDialog')),
          ),
        ],
      ),
    );
  }
}
