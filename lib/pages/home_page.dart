import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/myDrawer.dart';

import '../models/catalog.dart';
import '../widgets/ProductWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogItems.products[0]);
    return Scaffold(
      appBar: AppBar(title: const Text("Mit Shah")),
      body: Material(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: dummyList.length,
              itemBuilder: (context,index) {
  return ProductWidget(
    item: dummyList[index],
  );
              },
            ),
          )),
      drawer: myDrawer(),

    );
  }
}
