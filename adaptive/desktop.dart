import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            height: double.infinity,
            color: Colors.teal,
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login', style: Theme.of(context).textTheme.headline4),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email", border: OutlineInputBorder()),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password", border: OutlineInputBorder()),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.symmetric(vertical: 20),
                          color: Colors.teal,
                          child: Text('Next',
                              style: TextStyle(color: Colors.white))),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: MaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.symmetric(vertical: 20),
                          color: Colors.blue,
                          child: Text('Back',
                              style: TextStyle(color: Colors.white))),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
