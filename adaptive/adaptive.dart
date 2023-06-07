import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AdaptiveProgress extends StatelessWidget {
  String os;
  AdaptiveProgress({Key? key,required this.os}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(this.os=='android')
     return CircularProgressIndicator();
    return CupertinoActivityIndicator();
  }
}
