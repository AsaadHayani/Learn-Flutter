// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyCalc extends StatefulWidget {
  const MyCalc({Key? key}) : super(key: key);

  @override
  _MyCalcState createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {
  String text = '0';
  double numOne = 0;
  double numTwo = 0;
  String result = '0';
  String finalResult = '0';
  String ope = '';
  String prevOpe = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  "$text",
                  style: TextStyle(color: Colors.white, fontSize: 60),
                  maxLines: 1,
                  textAlign: TextAlign.right,
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonWidget("C", Color(0xffa5a5a5), 1),
                buttonWidget("+/-", Color(0xffa5a5a5), 1),
                buttonWidget("%", Color(0xffa5a5a5), 1),
                buttonWidget("/", Color(0xffff9800), 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonWidget("9", Color(0xff323232), 1),
                buttonWidget("8", Color(0xff323232), 1),
                buttonWidget("7", Color(0xff323232), 1),
                buttonWidget("X", Color(0xffff9800), 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonWidget("6", Color(0xff323232), 1),
                buttonWidget("5", Color(0xff323232), 1),
                buttonWidget("4", Color(0xff323232), 1),
                buttonWidget("-", Color(0xffff9800), 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonWidget("3", Color(0xff323232), 1),
                buttonWidget("2", Color(0xff323232), 1),
                buttonWidget("1", Color(0xff323232), 1),
                buttonWidget("+", Color(0xffff9800), 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonWidget("0", Color(0xff323232), 0),
                buttonWidget(".", Color(0xff323232), 1),
                buttonWidget("=", Color(0xffff9800), 1),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonWidget(String btnText, Color color, int num) {
    Container content;
    if (num == 0) {
      content = Container(
        padding: EdgeInsets.only(bottom: 10),
        child: MaterialButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
          color: color,
          onPressed: () {
            calculator(btnText);
          },
          child: Text(
            btnText,
            style: TextStyle(fontSize: 30),
          ),
        ),
      );
    } else {
      content = Container(
        padding: EdgeInsets.only(bottom: 10),
        child: MaterialButton(
          shape: CircleBorder(),
          padding: EdgeInsets.all(20),
          color: color,
          onPressed: () {
            calculator(btnText);
          },
          child: Text(
            btnText,
            style: TextStyle(fontSize: 30),
          ),
        ),
      );
    }
    return content;
  }

  void calculator(txtBtn) {
    if (txtBtn == "C") {
      text = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      ope = '';
      prevOpe = '';
    } else if (ope == "=" && txtBtn == "=") {
      switch (prevOpe) {
        case '+':
          finalResult = add();
          break;
        case '-':
          finalResult = sub();
          break;
        case 'X':
          finalResult = multiple();
          break;
        case '/':
          finalResult = division();
          break;
      }
    } else if (txtBtn == "+" ||
        txtBtn == "-" ||
        txtBtn == "/" ||
        txtBtn == "*" ||
        txtBtn == "=") {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }
      switch (ope) {
        case '+':
          finalResult = add();
          break;
        case '-':
          finalResult = sub();
          break;
        case '*':
          finalResult = multiple();
          break;
        case '/':
          finalResult = division();
          break;
      }
      prevOpe = ope;
      ope = txtBtn;
      result = '';
    } else if (txtBtn == "%") {
      result = (numOne / 100).toString();
      finalResult = result;
    } else if (txtBtn == ".") {
      if (!result.contains('.')) result += '.';
      finalResult = result;
    } else if (txtBtn == "+/-") {
      result.startsWith('-')
          ? result = result.substring(1)
          : result = '-' + result;
      finalResult = result;
    } else {
      if (result == 0)
        result = txtBtn;
      else {
        result = result + txtBtn;
      }
      finalResult = result;
    }
    setState(() {
      text = finalResult;
    });
  }

  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return decimalRemove(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return decimalRemove(result);
  }

  String multiple() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return decimalRemove(result);
  }

  String division() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return decimalRemove(result);
  }

  String decimalRemove(String _result) {
    if (_result.contains('.')) {
      List<String> split = _result.split('.'); //[10.0]=>[10,0]
      if (!(int.parse(split[1]) > 0)) {
        return split[0];
      }
    }
    return _result;
  }
}
