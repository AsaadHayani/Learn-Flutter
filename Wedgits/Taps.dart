// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> with SingleTickerProviderStateMixin {
  late TabController mycontroller;
  @override
  void initState() {
    print("print with startup page");
    mycontroller = new TabController(length: 4, vsync: this, initialIndex: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title to App"),
        bottom: TabBar(
            controller: mycontroller,
            isScrollable: true,
            indicatorPadding: EdgeInsets.all(5),
            indicatorColor: Colors.red,
            indicatorWeight: 5,
            labelColor: Colors.white,
            labelStyle: TextStyle(letterSpacing: 6),
            // onTap: (index) {
            //   print(index);
            // },
            tabs: const [
              Tab(
                child: Text("Tab 1"),
                icon: Icon(Icons.ac_unit),
              ),
              Tab(
                child: Text("Tab 2"),
                icon: Icon(Icons.ac_unit_outlined),
              ),
              Tab(
                child: Text("Tab 3"),
                icon: Icon(Icons.ac_unit_sharp),
              ),
              Tab(
                child: Text("Tab 4"),
                icon: Icon(Icons.access_alarm),
              )
            ]),
      ),
      body: TabBarView(controller: mycontroller, children: [
        Container(
          width: double.infinity,
          color: Colors.red,
          child: Text("TabBarView 1"),
        ),
        Container(
          width: double.infinity,
          color: Colors.red,
          child: Text("TabBarView 2"),
        ),
        Container(
          width: double.infinity,
          color: Colors.red,
          child: Text("TabBarView 3"),
        ),
        Text("TabBarView 4"),
      ]),
    );
  }
}
