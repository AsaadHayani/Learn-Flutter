import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  bool str = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(children: [
              Text("Syria"),
              // Checkbox(
              //     activeColor: Colors.blue,
              //     checkColor: Colors.black,
              //     value: str,
              //     onChanged: (val) {
              //       setState(() {
              //         str = val!;
              //       });
              //     }),
              CheckboxListTile(
                  activeColor: Colors.blue,
                  checkColor: Colors.black,
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  title: Text(""),
                  subtitle: Text("subtitle"),
                  secondary: Icon(Icons.flag),
                  isThreeLine: true,
                  selected: str,
                  value: str,
                  onChanged: (val) {
                    setState(() {
                      str = val!;
                    });
                  }),
            ])
          ],
        ),
      ),
    );
  }
}
