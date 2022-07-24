// ignore_for_file: unnecessary_new
import 'home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext build) {
    return MaterialApp(home: HomePage());
  }
}
