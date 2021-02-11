import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "JukBox",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Awesome App By Ayush"),
        ),
        body: Container(
          child: Center(child: Text("Hi this is Ayush First App")),
        ));
  }
}
