import 'package:flutter/material.dart';
import 'package:flutter_new/MyPopupMenuItem/popup_menu_item.dart';

class TestPopup extends StatelessWidget {
  const TestPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Popup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          children: [
            GestureDetector(
              onTapUp: (details) {
                popup(context, details);
              },
              child: Container(
                  alignment: Alignment.center,
                  child: Text("Asaad",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  color: Colors.red),
            ),
            GestureDetector(
              onTapUp: (details) {
                popup(context, details);
              },
              child: Container(
                  alignment: Alignment.center,
                  child: Text("Asaad",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  color: Colors.green),
            ),
            GestureDetector(
              onTapUp: (details) {
                popup(context, details);
              },
              child: Container(
                  alignment: Alignment.center,
                  child: Text("Asaad",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  color: Colors.orangeAccent),
            ),
            GestureDetector(
              onTapUp: (details) {
                popup(context, details);
              },
              child: Container(
                  alignment: Alignment.center,
                  child: Text("Asaad",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }

  void popup(BuildContext context, TapUpDetails details) {
    Size size = MediaQuery.of(context).size;
    double dxLeft = details.globalPosition.dx;
    double dyTop = details.globalPosition.dy;
    double dxRight = size.width - dxLeft;
    double dyBottom = size.width - dyTop;
    showMenu(
        context: context,
        position: RelativeRect.fromLTRB(dxLeft, dyTop, dxRight, dyBottom),
        items: [
          MyPopupMenuItem(press: () {}, child: Text("Edit")),
          MyPopupMenuItem(press: () {}, child: Text("Delete"))
        ]);
  }
}
