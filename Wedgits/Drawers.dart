// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey, // endDrawer: const Drawer(),
        drawerScrimColor: Colors.red.withOpacity(0.5), //transparent
        drawer: Drawer(
          child: Column(
            children: const [
              Text("Content in Drawer"),
              UserAccountsDrawerHeader(
                accountName: Text("Asaad"),
                accountEmail: Text("as@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Text("AS"),
                  backgroundColor: Colors.red,
                ),
              ),
              ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("About Page"),
                leading: Icon(Icons.add_box),
              ),
              ListTile(
                title: Text("Help Page"),
                leading: Icon(Icons.help),
              ),
              ListTile(
                title: Text("Editprofile Page"),
                leading: Icon(Icons.exit_to_app),
              ),
            ],
          ),
        ),
        body: Center(
            child: ElevatedButton(
          child: Text("open Drawer"),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        )));
  }
}
