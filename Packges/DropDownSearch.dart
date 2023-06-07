// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  var selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        children: [
          DropdownSearch<String>(
              mode: Mode.MENU,
              showSelectedItems: true,
              showSearchBox: true,
              items: const [
                "Brazil (Disabled)",
                "Italia",
                "Syria",
                "Iraq",
                "Tunisia",
                'Canada'
              ],
              label: "Menu mode",
              hint: "country in menu mode",
              popupItemDisabled: (String s) => s.contains('z'),
              onChanged: (val) {
                print(val);
              },
              selectedItem: selected),
        ],
      ),
    );
  }
}
