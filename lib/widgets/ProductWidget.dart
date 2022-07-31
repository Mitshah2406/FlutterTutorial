import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ProductWidget extends StatelessWidget{
  final Item item;

  const ProductWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name}");
        },
        contentPadding: EdgeInsets.all(15.0),
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),

        trailing: Text("\$${item.price.toString()}", style: TextStyle(color: Colors.black45,
        fontWeight: FontWeight.bold),textScaleFactor: 1.2,),
      ),
    );
  }



}