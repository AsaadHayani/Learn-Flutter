import 'package:flutter/material.dart';

class GradientTest extends StatelessWidget {
  const GradientTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(children: [
      Row(children: [
        Container(
            padding: EdgeInsets.only(top: 30),
            height: size.height * .5,
            width: size.width / 2,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.red,
              Colors.yellow,
              Colors.green,
              Colors.indigo
            ], stops: [
              .2,
              .4,
              .7,
              .9
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child:
                Text("LinearGradient", style: TextStyle(color: Colors.white))),
        Container(
            height: size.height * .5,
            width: size.width / 2,
            padding: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                gradient: RadialGradient(colors: [
              Colors.red,
              Colors.yellow,
              Colors.green,
              Colors.indigo
            ], stops: [
              .1,
              .2,
              .7,
              .9
            ], radius: .7)),
            child:
                Text("RadialGradient", style: TextStyle(color: Colors.white)))
      ]),
      Container(
          height: size.height * .5,
          width: double.infinity,
          padding: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              gradient: SweepGradient(colors: [
            Colors.red,
            Colors.yellow,
            Colors.green,
            Colors.indigo
          ], stops: [
            .1,
            .2,
            .7,
            .9
          ])),
          child: Text("SweepGradient", style: TextStyle(color: Colors.white)))
    ]));
  }
}
