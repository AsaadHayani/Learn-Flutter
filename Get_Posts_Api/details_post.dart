import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final post;
  const Details({Key? key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.blueGrey[200],
        child: Text("Descreption: ${post['body']}"),
      ),
    );
  }
}
