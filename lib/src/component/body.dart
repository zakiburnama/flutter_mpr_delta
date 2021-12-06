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
        title: Text(
          item.name, 
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
        ),
        subtitle: Text(
          item.hex
          
        ),
      ),
    );
  }
}
