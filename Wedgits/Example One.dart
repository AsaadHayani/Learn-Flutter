// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SingleChild_ScrollView extends StatelessWidget {
  const SingleChild_ScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                color: Colors.blue,
              ),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "This is Title",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                alignment: Alignment.center,
                child: const Text(
                    'This is Card into Row This is Card into Row'
                    'This is Card into Row This is Card into Row'
                    'This is Card into Row This is Card into Row'
                    'This is Card into Row This is Card into Row',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, height: 1.4))),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[900],
                          ),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                      Spacer(),
                      Text("17 reviws", style: TextStyle(fontSize: 16))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.category,
                              size: 40,
                              color: Colors.green,
                            ),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("Feed")),
                            Text("2 - 4")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.emoji_food_beverage,
                              size: 40,
                              color: Colors.green,
                            ),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("Feed")),
                            Text("2 - 4")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.restaurant,
                              size: 40,
                              color: Colors.green,
                            ),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("Feed")),
                            Text("2 - 4")
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
