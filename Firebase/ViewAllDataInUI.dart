// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  CollectionReference userColl = FirebaseFirestore.instance.collection("users");

  List usersList = [];
  viewAllDataInUI() async {
    var resBody = await userColl.get();
    resBody.docs.forEach((element) {
      setState(() {
        usersList.add(element.data());
      });
      print("=========\n${element.data()}\n=========");
    });
  }

  DocumentReference userDoc = FirebaseFirestore.instance
      .collection("users")
      .doc("0zoMzQiHBXMRF6ZK2VbA");
  viewDataOneElementInUI() async {
    var resBody = await userDoc.get();
    setState(() {
      usersList.add(resBody.data());
      print("=========\n${resBody.data()}\n=========");
    });
  }

  @override
  void initState() {
    // viewAllDataInUI();
    viewDataOneElementInUI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: usersList.isEmpty || usersList == null
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: usersList.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text("Your Name: ${usersList[i]['name']}"),
                  subtitle: Text("Your Age: ${usersList[i]['age']}"),
                );
                //ElevatedButton(onPressed: () {}, child: Text("Data")),
              }),
    );
  }
}
