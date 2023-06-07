// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
        "https://storage.googleapis.com/gd-wagtail-prod-assets/original_images/evolving_google_identity_2x1.jpg",
        width: 100,
        height: 100,
        fit: BoxFit.fill,
      ),
      // body:Image.asset("imgs/1.jpg",width: 100,height: 100,fit: BoxFit.fill,),
    );
  }
}
