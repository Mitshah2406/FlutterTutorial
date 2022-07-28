import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/myDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mit Shah")),
      body: Material(
          child: Center(
        child: Text('Hello...'),
      )),
      drawer: myDrawer(),
    );
  }
}
