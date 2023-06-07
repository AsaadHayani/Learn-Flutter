// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowSlide extends PageRouteBuilder {
  final Page;
  ShowSlide({this.Page})
      : super(
            pageBuilder: (context, animation, animationtwo) => Page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              // var begin = Offset(0.0, 1.0);
              // var end = Offset.zero;
              // var tween = Tween(begin: begin, end: end);
              // var offsetAnimation = animation.drive(tween);
              // return SlideTransition(position: offsetAnimation, child: child);

              var begin = 0.0;
              var end = 1.0;
              var tween = Tween(begin: begin, end: end);
              var curveAnimation = CurvedAnimation(
                  parent: animation, curve: Curves.linearToEaseOut);
              // return ScaleTransition(
              //   scale: tween.animate(curveAnimation),
              //   child: child,
              // );
              // return RotationTransition(
              //   turns: tween.animate(curveAnimation),
              //   child: child,
              // );
              // Mix Scale & Rotation Transition
              return ScaleTransition(
                  scale: tween.animate(curveAnimation),
                  child: RotationTransition(
                    turns: tween.animate(curveAnimation),
                    child: child,
                  ));

              // return Align(
              //   alignment: Alignment.center,
              //   child: SizeTransition(
              //     sizeFactor: animation,
              //     child: child,
              //   ),

              // return FadeTransition(
              //   opacity: animation,
              //   child: child,
              // );
            });
}
