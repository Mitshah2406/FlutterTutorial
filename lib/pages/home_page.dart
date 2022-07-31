import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/myDrawer.dart';

import '../models/catalog.dart';
import '../widgets/ProductWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getProducts();
  }

  getProducts() async {
    await Future.delayed(Duration(seconds: 2));
    var data = await rootBundle.loadString("assets/files/products.json");
    var decodedData = jsonDecode(data);
    var productsData = decodedData["products"];
    CatalogItems.products = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mit Shah")),
      body: Material(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            (CatalogItems.products != null && CatalogItems.products!.isNotEmpty)
                ? ListView.builder(
                    itemCount: CatalogItems.products?.length,
                    itemBuilder: (context, index) {
                      return ProductWidget(
                        item: CatalogItems.products![index],
                      );
                    },
                  )
                : Center(child: CircularProgressIndicator()),
      )),
      drawer: myDrawer(),
    );
  }
}
