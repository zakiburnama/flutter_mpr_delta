import 'package:flutter/material.dart';

import 'api/item.dart';
import 'component/body.dart';

class DetailPage extends StatelessWidget {
  final Item item;
  
  const DetailPage({ Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(item.rgb[0], item.rgb[1], item.rgb[2], 1),
      appBar: buildAppBar(context),
      body: Body(item: item),

    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        title: const Text('Infinite List Sample'),
    );
  }
  
  AppBar buildBody(BuildContext context) {
    return AppBar(
    );
  }

}
