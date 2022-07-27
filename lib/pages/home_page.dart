import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final String name = "Mit Shah";
  final int day = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mit Shah")),
      body: Material(
          child: Center(
        child: Text('Hello... $name Here... it is day $day of flutter'),
      )),
      drawer: Drawer(),
    );
  }
}
