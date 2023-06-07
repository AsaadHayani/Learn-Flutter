// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List mobiles = [
    {
      "name": "S21",
      "screen": "6.2",
      "cpu": "snapdragon",
    },
    {
      "name": "S21",
      "screen": "6.2",
      "cpu": "snapdragon",
    },
    {
      "name": "S21",
      "screen": "6.2",
      "cpu": "snapdragon",
    },
    {
      "name": "S21",
      "screen": "6.2",
      "cpu": "snapdragon",
    },
    {
      "name": "S21",
      "screen": "6.2",
      "cpu": "snapdragon",
    },
    {
      "name": "S20",
      "screen": "6.3",
      "cpu": "snapdragon",
    },
    {
      "name": "S10",
      "screen": "6.4",
      "cpu": "snapdragon",
    },
  ];
  List users = ["asaad", "alaa", "wael"];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // child: GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2, //عدد الاعمدة في كل صف
      //     mainAxisSpacing: 10, //المسافة بين العناصر وفق خاصية scrollDirection
      //     crossAxisSpacing: 10, //المسافة بين العناصر بعكس خاصية scrollDirection
      //   ),
      //   children: [
      //     Container(
      //       child: Text("One"),
      //       height: 200,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       child: Text("two"),
      //       height: 200,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       child: Text("three"),
      //       height: 200,
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       child: Text("four"),
      //       height: 200,
      //       color: Colors.green,
      //     ),
      //   ],
      // ),

      // child: GridView.builder(
      //     scrollDirection: Axis.vertical,
      //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3, //عدد الاعمدة في كل صف
      //       mainAxisSpacing: 20, //المسافة بين العناصر وفق خاصية scrollDirection
      //       crossAxisSpacing:
      //           10, //المسافة بين العناصر بعكس خاصية scrollDirection
      //       childAspectRatio:
      //           1, //تجعل طول كل قطعة اقرب للمربع في حال زيادة الصفوف وكلما زاد الرقم نقص الطول
      //     ),
      //     itemCount: mobiles.length,
      //     itemBuilder: (context, i) {
      //       return Container(
      //         child: ListTile(
      //           tileColor: Colors.blue,
      //           title: Text("Name is: ${mobiles[i]['name']}"),
      //           subtitle: Text("Screen is: ${mobiles[i]['screen']}"),
      //         ),
      //       );
      //     }),

      // child: GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3, //عدد الاعمدة في كل صف
      //     mainAxisSpacing: 20, //المسافة بين العناصر وفق خاصية scrollDirection
      //     crossAxisSpacing: 10, //المسافة بين العناصر بعكس خاصية scrollDirection
      //   ),
      //   children: List.generate(users.length, (index) {
      //     return Container(
      //       child: Text("${users[index]}"),
      //       height: 200,
      //       color: Colors.green,
      //     );
      //   }),
      // ),

      child: GridView.count(
          crossAxisCount: 3, //عدد الاعمدة في كل صف
          mainAxisSpacing: 20, //المسافة بين العناصر وفق خاصية scrollDirection
          children: [
            Container(
              child: Text("Name"),
              color: Colors.blue,
            ),
            Container(
              child: Text("Name"),
              color: Colors.black,
            ),
            Container(
              child: Text("Name"),
              color: Colors.yellow,
            ),
            Container(
              child: Text("Name"),
              color: Colors.green,
            ),
          ]),
    );
  }
}
