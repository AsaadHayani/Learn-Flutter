// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart' as ic;

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int selectedindex = 0;
  List<Widget> pages = [
    Text("Home"),
    // PageTwo(),
    Text("About"),
    Text("Profile"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w900),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w300),
        selectedFontSize: 20,
        unselectedFontSize: 18,
        iconSize: 30,
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(ic.Icons.home)),
          // BottomNavigationBarItem(label: "PageTwo", icon: Icon(ic.Icons.hail)),
          BottomNavigationBarItem(label: "About", icon: Icon(ic.Icons.hail)),
          BottomNavigationBarItem(
              label: "Profile", icon: Icon(ic.Icons.portrait)),
        ],
      ),
      body: pages.elementAt(selectedindex),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("PageTwo"),
          Text("PageTwo"),
          Text("PageTwo"),
          Text("PageTwo"),
        ],
      ),
      color: Colors.green,
      width: double.infinity,
    );
  }
}
