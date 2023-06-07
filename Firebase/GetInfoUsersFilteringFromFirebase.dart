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

  getData() async {
    //getInfoUsersFromFirebase
//     userColl.get().then((value) => {
//           value.docs.forEach((element) {
//             print("===============");
//             print("Fetch All Info Users From Firebase: ${element.data()}");
//             print("===============");
//           })
//         });

//     //getInfoUserOneFromFirebase
//     DocumentReference docRef = FirebaseFirestore.instance
//         .collection("users")
//         .doc("0zoMzQiHBXMRF6ZK2VbA");
//     await docRef.get().then((value) {
//       print("===============");
//       print("Fetch Info User By ID From Firebase: ${value.data()}");
//       print("Checking There Is User: ${value.exists}");
//       print("Fetch ID User By ID From Firebase: ${value.id}");
//       print("===============");
//     });

//     //getInfoUsersFilteringFromFirebase
//     userColl
//         .where("name", isEqualTo: "Asaad") // Filtering By (name: Asaad)
//         .where("age", isGreaterThan: 20) // Filtering By (age isGreaterThan: 20)
//         .get()
//         .then((value) => {
//               value.docs.forEach((element) {
//                 print("===============");
//                 print("Fetch All Users Filtering By: ${element.data()}");
//                 print("===============");
//               })
//             });

// //real Time Update Info UsersFromFirebase
//     FirebaseFirestore.instance.collection("users").snapshots().listen((event) {
//       event.docs.forEach((element) {
//         print("===============");
//         print("Show Name User & Real Time Update: ${element.data()['name']}");
//         print("Show email User & Real Time Update: ${element.data()['email']}");
//         print(
//             "Show password User & Real Time Update: ${element.data()['password']}");
//         print("Show age User & Real Time Update: ${element.data()['age']}");
//         print("===============");
//       });
//     });
//     // Add User From Firebase
// // Method 1 Without ID
//     // userColl.add({
//     //   "name": "Yasser",
//     //   "email": "yasser@gmail.com",
//     //   "password": "123456789",
//     //   "age":40
//     // })
//     //   .then((value) => print("===============\nUser Added Successfuly\n==============="))
//     //  .catchError((e)=>print("Error: $e"));
// // Method 2 With ID
//     userColl
//         .doc("12345")
//         .set({
//           "name": "Majed",
//           "email": "majed@gmail.com",
//           "password": "123456789",
//           "age": 36
//         })
//         .then((value) =>
//             print("===============\nUser Added Successfuly\n==============="))
//         .catchError((e) => print("Error: $e"));
//     print("===============");
//     print("User Added Successfuly");
//     print("===============");

// // Update User From Firebase
//     userColl
//         .doc("12345")
//         .update({
//           "name": "Majed",
//           "email": "majed@gmail.com",
//           "password": "123456789",
//           "age": 38
//         })
//         .then((value) =>
//             print("===============\nUser Updated Successfuly\n==============="))
//         .catchError((e) => print("Error: $e"));

// // Delete User From Firebase
//     userColl
//         .doc("12345")
//         .delete()
//         .then((value) =>
//             print("===============\nUser Deleted Successfuly\n==============="))
//         .catchError((e) => print("Error: $e"));
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(),
        ],
      ),
    );
  }
}
