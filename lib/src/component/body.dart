// TODO Implement this library.import 'package:car_shop/constans.dart';
//import 'package:car_shop/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_delta/src/api/item.dart';

//import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Item item;

  const Body({ Key? key, required this.item }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      
    );
  }
}
