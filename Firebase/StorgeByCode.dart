// ignore_for_file: file_names

import 'dart:io';
import 'dart:math';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  File? file;
  ImagePicker imagePicker = ImagePicker();
  upload() async {
    PickedFile? imgPicked =
        await imagePicker.getImage(source: ImageSource.camera);
    if (imgPicked != null) {
      String imgName = basename(imgPicked.path);
      print("==========\n$imgName\n==========");
      // Start Upload Image On Firebase
      int rand = Random().nextInt(10000000);
      imgName = "$rand$imgName";
      print("==========\nName Image: $imgName\n==========");
      var refStorage = FirebaseStorage.instance.ref("images/$imgName");
      await refStorage.putFile(file!);
      var url = await refStorage.getDownloadURL();
      print("==========\nURL: $url\n==========");
    } else {
      print("Please Chooce Image");
    }
  }

  getImagesNameFromFirebase() async {
    var refStorage = await FirebaseStorage.instance.ref().list();
    refStorage.items.forEach((element) {
      print("==========\nName Image: ${element.name}\n==========");
    });
  }

  @override
  void initState() {
    getImagesNameFromFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: ElevatedButton(
          onPressed: () {},
          child: Text("Upload"),
        ));
  }
}
