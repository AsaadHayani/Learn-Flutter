// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  // Normal Example
  // String? name;
  // Future getData() async {
  //   await Future.delayed(Duration(seconds: 3), () {
  //     name = "as";
  //     print("Asaad");
  //   });
  //   print(name);
  // }

  Position? cl;
  Future getPosition() async {
    bool? services;
    LocationPermission? per;

    services = await Geolocator.isLocationServiceEnabled();
    print(services);
    if (services == false) {
      const AlertDialog(
        title: Text("Title"),
        content: Text("services not enabled"),
        titlePadding: EdgeInsets.all(20),
      );
    }
    per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied) {
      per = await Geolocator.requestPermission();
      if (per == LocationPermission.always) {
        getLatLong();
      }
    }
    print("======\n$per\n======");
  }

  Future<Position> getLatLong() async {
    return await Geolocator.getCurrentPosition().then((value) => value);
  }

  @override
  void initState() {
    // getData();
    getPosition();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future ( Async = Await )'),
      ),
      body: ElevatedButton(
        child: Text("Location"),
        onPressed: () async {
          cl = await getLatLong();
          print(cl!.latitude);
          print(cl!.longitude);
        },
      ),
    );
  }
}
