// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart' as ic;

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  String value = "";
  List imgs = [
    {"url": "imgs/1.png"},
    {"url": "imgs/2.png"},
    {"url": "imgs/3.png"},
    {"url": "imgs/4.png"},
    {"url": "imgs/5.png"},
  ];
  var name;
  TextEditingController enteruser = new TextEditingController();
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  funSend() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();
      print(name);
      return "biger from 5";
    } else {
      return "latest from 8";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formstate,
        child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "hintText",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                hintMaxLines: 2,
              ),
            ),
            TextFormField(
              initialValue: "cursor",
              decoration: const InputDecoration(
                prefixText: "prefixText",
                prefixStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                prefixIcon: Icon(ic.Icons.ac_unit),
                icon: Icon(ic.Icons.ac_unit),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.datetime,
              maxLength: 20,
              maxLines: 2,
              minLines: 1,
              decoration: const InputDecoration(
                suffixText: "suffixText",
                suffixStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                suffixIcon: Icon(ic.Icons.ac_unit),
              ),
            ),
            TextFormField(
              initialValue: "cursor",
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "labelText",
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "UnderlineInputBorder",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 3))),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "OutlineInputBorder",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.red, width: 3))),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "disabled",
                  enabled: false,
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.black, width: 2))),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "focusedBorder",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.red, width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.pink, width: 2))),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "InputBorder.none",
                border: InputBorder.none,
              ),
            ),
            TextFormField(
              cursorColor: Colors.pink,
              cursorHeight: 15,
              cursorWidth: 10,
              cursorRadius: const Radius.circular(5),
              decoration: InputDecoration(
                hintText: "cursor",
              ),
            ),
            TextFormField(
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              textInputAction: TextInputAction.go,
              textAlign: TextAlign.end,
              controller: enteruser,
            ),
            ElevatedButton(
                onPressed: () {
                  print(enteruser);
                },
                child: Text("Send")),
            TextFormField(
              onTap: () {
                print("onTap");
              },
              onChanged: (text) {
                // print("onChanged");
                // print(text);
                setState(() {
                  value = text;
                });
              },
              onEditingComplete: () {
                print("onEditingComplete");
              },
            ),
            Text("value: $value"),
            TextFormField(
              autovalidateMode: AutovalidateMode.always, //للتحقق مباشرة
              validator: (text) {
                if (text!.length < 5) {
                  return "latest from 5";
                }
                return null;
              },
              onSaved: (text) {
                name = text!;
              },
            ),
            ElevatedButton(
                onPressed: funSend, child: Text("Send")), // للتحقق عند النقر
          ],
        ),
      ),
    );
  }
}
