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
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3,
            child: Container(
              color: Color.fromRGBO(item.rgb[0], item.rgb[1], item.rgb[2], 1),
            ),
          ),
          Text(
            item.name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            item.hex,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              //fontWeight: FontWeight.bold
            ),
          ),
          Text(
            item.rgb[0].toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              //fontWeight: FontWeight.bold
            ),
          ),
          Text(
            item.rgb[1].toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              //fontWeight: FontWeight.bold
            ),
          ),
          Text(
            item.rgb[2].toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              //fontWeight: FontWeight.bold
            ),
          ),
        ],
        /*
        leading: AspectRatio(
          aspectRatio: 3,
          child: Container(
            color: Color.fromRGBO(item.rgb[0], item.rgb[1], item.rgb[2], 1),
          ),
        ),
        title: Text(
          item.name, 
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
        ),
        subtitle: Text(
          item.hex
        ),
        */
      ),
    );
  }
}
