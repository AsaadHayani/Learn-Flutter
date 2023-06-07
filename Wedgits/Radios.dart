// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String? country;
  String? car;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          // Column(
          //   children: [
          //     Text(
          //       "Radio: Chooce Country",
          //       style: TextStyle(fontSize: 30),
          //     ),
          // Row(
          //   children: [
          //     Text("Syria"),
          //     Radio(
          //         value: "Syria",
          //         groupValue: country,
          //         onChanged: (val) {
          //           setState(() {
          //             // val = country;
          //             country = val as String?;
          //             print(country);
          //           });
          //         }),
          //     Text("USA"),
          //     Radio(
          //         value: "USA",
          //         groupValue: country,
          //         onChanged: (val) {
          //           setState(() {
          //             country = val as String?;
          //             print(country);
          //           });
          //         }),
          //     Text("Saudi"),
          //     Radio(
          //         activeColor: Colors.red,
          //         value: "Saudi",
          //         groupValue: country,
          //         onChanged: (val) {
          //           setState(() {
          //             country = val as String?;
          //             print(country);
          //           });
          //         }),
          //   ],
          // ),
          // Text(
          //   "RadioListTile: Chooce Country",
          //   style: TextStyle(fontSize: 30),
          // ),
          // RadioListTile(
          //     selected: country == "Syria" ? true : false,
          //     controlAffinity: ListTileControlAffinity.trailing,
          //     activeColor: Colors.pink,
          //     title: Text("Syria"),
          //     subtitle: Text("description"),
          //     secondary: Icon(Icons.flag),
          //     value: "Syria",
          //     groupValue: country,
          //     onChanged: (val) {
          //       setState(() {
          //         country = val as String?;
          //       });
          //     }),
          // RadioListTile(
          //     selected: country == "USA" ? true : false,
          //     controlAffinity: ListTileControlAffinity.trailing,
          //     activeColor: Colors.pink,
          //     title: Text("USA"),
          //     subtitle: Text("description"),
          //     secondary: Icon(Icons.flag),
          //     value: "USA",
          //     groupValue: country,
          //     onChanged: (val) {
          //       setState(() {
          //         country = val as String?;
          //       });
          //     }),
          RadioListTile(
              selected: country == "Iraq" ? true : false,
              controlAffinity: ListTileControlAffinity.trailing,
              activeColor: Colors.pink,
              title: Text("Iraq"),
              subtitle: Text("description"),
              secondary: Icon(Icons.flag),
              value: "Iraq",
              groupValue: country,
              onChanged: (val) {
                setState(() {
                  country = val as String?;
                });
              }),
    );
  }
}
