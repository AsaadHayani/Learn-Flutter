import 'dart:io';
import 'dart:math';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_new/DesignAppNote/main.dart';
// import 'package:flutter_new/TextFormField.dart' as test;

Future backgroundMsg(RemoteMessage msg) async {
  print("Body Notification: ${msg.notification!.body}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundMsg);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var fbm = FirebaseMessaging.instance;
  viewNotificationWithTerminateApp() {
    fbm.getToken().then((token) {
      print("==========\nMy Token: $token\n==========");
    });
  }

  viewNotificationWithRunApp() {
    FirebaseMessaging.onMessage.listen((event) {
      print(
          "==========\nTitle Notification: ${event.notification!.title}\n==========");
      print(
          "==========\nBody Notification: ${event.notification!.body}\n==========");
      // AwesomeDialog(
      //         context: context,
      //         title: "Title",
      //         body: Text(
      //             "Title Notification: ${event.notification!.title}\nBody Notification: ${event.notification!.body}"))
      //     .show();
    });
  }

  moveToAppWithClickNoti() {
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      Text(
          "Title Notification: ${event.notification!.title}\nBody Notification: ${event.notification!.body}");
    });
  }

  @override
  void initState() {
    viewNotificationWithTerminateApp();
    viewNotificationWithRunApp();
    moveToAppWithClickNoti();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Home Page"),
        ),
        body: ElevatedButton(onPressed: () {}, child: Text("Upload")));
  }
}
