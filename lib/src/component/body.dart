import 'package:flutter/material.dart';
import 'package:flutter_delta/src/api/item.dart';

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
            aspectRatio: 2,
            child: Container(
              color: Color.fromRGBO(item.rgb[0], item.rgb[1], item.rgb[2], 1),
            ),
          ),
          Text(
            '\n'+item.name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            '\n'+item.hex,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              //fontWeight: FontWeight.bold
            ),
          ),
          Text(
            '\nRGB: ['+item.rgb[0].toString()+'] ['+item.rgb[1].toString()+'] ['+item.rgb[2].toString()+']',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              //fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
