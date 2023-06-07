import 'package:flutter/material.dart';

class TextEffect extends StatefulWidget {
  const TextEffect({Key? key}) : super(key: key);

  @override
  State<TextEffect> createState() => _TextEffectState();
}

class _TextEffectState extends State<TextEffect>
    with SingleTickerProviderStateMixin {
  AnimationController? animCont;
  Animation<double>? fadingAnim;

  @override
  void initState() {
    super.initState();
    animCont =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnim = Tween<double>(begin: .2, end: 1).animate(animCont!);
    animCont?.repeat(reverse: true);
  }

  @override
  void dispose() {
    super.dispose();
    animCont?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: fadingAnim!,
        child: Center(
          child: Text("Text Effect",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
        ),
      ),
    );
  }
}
