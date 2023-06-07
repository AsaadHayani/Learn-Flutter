// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart' as ic;

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(ic.Icons.search)),
        ],
        title: Text("SearchDelegate"),
      ),
      body: Text("SearchDelegate"),
    );
  }
}

// query = هي قيمة النص المدخل في حقل البحث
class DataSearch extends SearchDelegate {
  List names = [
    "Asaad",
    "Wael",
    "Alaa",
    "Sondos",
    "Layth",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(ic.Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(ic.Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("$query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterStartsName =
        names.where((element) => element.startsWith(query)).toList();
    List filterContainsName =
        names.where((element) => element.contains(query)).toList();
    return ListView.builder(
      itemCount: query == "" ? names.length : filterContainsName.length,
      itemBuilder: (context, i) {
        return InkWell(
          onTap: () {
            query = query == "" ? names[i] : filterContainsName[i];
            showResults(context);
          },
          child: Container(
              padding: EdgeInsets.all(10),
              child: query == ""
                  ? Text("${names[i]}")
                  : Text("${filterContainsName[i]}")),
        );
      },
    );
  }
}
