// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  File? image;
  final imgpicker = ImagePicker();

  uploadImg() async {
    // var pickedimg = await imgpicker.getImage(source: ImageSource.gallery);
    var pickedimg = await imgpicker.getImage(source: ImageSource.camera);
    if (pickedimg != null) {
      setState(() {
        image = File(pickedimg.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("ImagePicker")),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: uploadImg,
              child: Text("uploadImg"),
            ),
          ),
          image == null ? Text("No chooce image") : Image.file(image!),
        ],
      ),
    );
  }
}
