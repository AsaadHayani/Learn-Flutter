// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List posts = [];

  Future getPost() async {
    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    http.Response res = await http.get(uri);
    dynamic resBody = jsonDecode(res.body);
    setState(() {
      posts.addAll(resBody);
    });
    print(resBody);
  }

  Future addPost() async {
    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    http.Response res = await http
        .post(uri, body: {"title": "title1", "userId": "1", "body": "body1"});
    dynamic resBody = jsonDecode(res.body);
    print(resBody);
    return resBody;
  }

  @override
  void initState() {
    getPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                addPost();
              },
              child: const Text('addPost')),
          posts == null || posts.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, i) {
                    return Text("${posts[i]['title']}");
                  }),
        ],
      ),
    );
  }
}
