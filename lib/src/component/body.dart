//import 'package:car_shop/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_delta/src/api/item.dart';

//import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Item item;

  const Body({ Key? key, required this.item }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //return SingleChildScrollView();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: Container(
            color: Color.fromRGBO(item.rgb[0], item.rgb[1], item.rgb[2], 1),
          ),
        ),
        title: Text(item.name, style: Theme.of(context).textTheme.headline6),
        subtitle: Text(item.hex),
      ),
    );
  }
}
