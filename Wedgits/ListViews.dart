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
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            // ListView(
            //   scrollDirection: Axis.vertical, //default
            //   padding: const EdgeInsets.all(8),
            //   // reverse: true,
            //   // physics: ClampingScrollPhysics(),//default
            //   physics: BouncingScrollPhysics(),
            //   // physics: NeverScrollableScrollPhysics(),
            //   children: <Widget>[
            //     Container(
            //       height: 200,
            //       width: 200,
            //       color: Colors.red,
            //       child: const Center(child: Text('Entry A')),
            //     ),
            //     Container(
            //       height: 200,
            //       color: Colors.yellow,
            //       child: ListView(
            //         physics: NeverScrollableScrollPhysics(),
            //         children: [
            //           Text('ListView inside ListView inside Container')
            //         ],
            //       ),
            //     ),
            //     Container(
            //       height: 200,
            //       width: 200,
            //       color: Colors.blue,
            //       child: const Center(child: Text('Entry B')),
            //     ),
            //     ListView(
            //       shrinkWrap: true,
            //       physics: NeverScrollableScrollPhysics(),
            //       children: [
            //         Container(
            //             color: Colors.pink,
            //             child: Text('ListView inside ListView with shrinkWrap'))
            //       ],
            //     ),
            //     Container(
            //       height: 200,
            //       width: 200,
            //       color: Colors.green,
            //       child: const Center(child: Text('Entry C')),
            //     ),
            //   ],
            // ),
            // Example on ListView
            //     ListView(
            //   scrollDirection: Axis.vertical, //default
            //   padding: const EdgeInsets.all(8),
            //   physics: BouncingScrollPhysics(),
            //   children: <Widget>[
            //     Container(
            //       height: 220,
            //       child: ListView(children: [
            //         Container(
            //           child: Text('Car 1'),
            //           color: Colors.red,
            //           height: 200,
            //         ),
            //         Container(
            //           child: Text('Car 2'),
            //           color: Colors.yellow,
            //           height: 200,
            //         ),
            //       ]),
            //     ),
            //     Container(
            //       height: 220,
            //       child: ListView(
            //         children: [
            //           Container(
            //             height: 200,
            //             width: 200,
            //             color: Colors.blue,
            //             child: Text('Mobile 1'),
            //           ),
            //           Container(
            //             height: 200,
            //             width: 200,
            //             color: Colors.green,
            //             child: Text('Mobile 2'),
            //           ),
            //         ],
            //       ),
            //     )
            //   ],
            // ),
            //     Container(
            //   child: ListView.builder(
            //       itemCount: 5,
            //       itemBuilder: (context, i) {
            //         return Container(
            //           height: 200,
            //           color: Colors.red,
            //           child: Text("$i"),
            //           margin: EdgeInsets.only(bottom: 10),
            //         );
            //       }),
            // ),
            // Example on API in ListView
            //       Container(
            // child: ListView.builder(
            //     itemCount: mobiles.length,
            //     itemBuilder: (context, i) {
            //       return Container(
            //         height: 100,
            //         // color: Colors.blue,
            //         margin: EdgeInsets.only(bottom: 10),
            //         child: ListTile(
            //           tileColor: Colors.blue,
            //           title: Text("Name is: ${mobiles[i]['name']}"),
            //           subtitle: Text("Screen is: ${mobiles[i]['screen']}"),
            //           trailing: Text("CPU is: ${mobiles[i]['cpu']}"),
            //         ),
            //       );
            //     }),
            Container(
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.red,
              height: 5,
              thickness: 3,
            );
          },
          itemCount: mobiles.length,
          itemBuilder: (context, i) {
            return Container(
              height: 100,
              // color: Colors.blue,
              margin: EdgeInsets.only(bottom: 10),
              child: ListTile(
                tileColor: Colors.blue,
                title: Text("Name is: ${mobiles[i]['name']}"),
                subtitle: Text("Screen is: ${mobiles[i]['screen']}"),
                trailing: Text("CPU is: ${mobiles[i]['cpu']}"),
              ),
            );
          }),
    ));
  }
}
