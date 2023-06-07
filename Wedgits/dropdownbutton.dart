import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      color: Colors.purple,
      child: DropdownButton<String>(
        // itemHeight: 30,
        onTap: () {
          print('onTap');
        },
        isExpanded: true,
        dropdownColor: Colors.red,
        underline: Divider(thickness: 0),
        hint: Text(
          "SELECT ITEM",
          style: TextStyle(color: Colors.blue),
        ),
        value: dropdownValue,
        icon: const Icon(
          Icons.arrow_downward,
          size: 35,
          color: Colors.white,
        ),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.blue, fontSize: 20),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );

    // child: DropdownButtonFormField<String>(
    //   // itemHeight: 30,
    //   onTap: () {
    //     print('onTap');
    //   },
    //   isExpanded: true,
    //   dropdownColor: Colors.red,
    //   hint: Container(
    //     width: double.infinity,
    //     child: Text(
    //       "اختر من هنا",
    //       textAlign: TextAlign.center,
    //       textDirection: TextDirection.rtl,
    //       style: TextStyle(color: Colors.white),
    //     ),
    //   ),
    //   value: dropdownValue,
    //   icon: const Icon(
    //     Icons.arrow_downward,
    //     size: 35,
    //     color: Colors.white,
    //   ),
    //   iconSize: 24,
    //   elevation: 16,
    //   style: const TextStyle(color: Colors.blue, fontSize: 20),
    //   onChanged: (String? newValue) {
    //     setState(() {
    //       dropdownValue = newValue!;
    //     });
    //   },
    //   items: <String>['One', 'Two', 'Free', 'Four']
    //       .map<DropdownMenuItem<String>>((String value) {
    //     return DropdownMenuItem<String>(
    //       value: value,
    //       child: Text(value),
    //     );
    //   }).toList(),
    // ),);
  }
}
