// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'api/item.dart';
import 'detail.dart';

/// This is the widget responsible for building the item in the list,
/// once we have the actual data [item].
class ItemTile extends StatelessWidget {
  final Item item;

  const ItemTile({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: Container(
            color: Color.fromRGBO(item.rgb[0], item.rgb[1], item.rgb[2], 1),
          ),
        ),
        title: Text(
          item.name, 
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage(item: item,)), 
          );
        },
      ),
    );
  }
}

/// This is the widget responsible for building the "still loading" item
/// in the list (represented with "..." and a crossed square).
class LoadingItemTile extends StatelessWidget {
  const LoadingItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: const AspectRatio(
          aspectRatio: 1,
          child: Placeholder(),
        ),
        title: Text('...',
          style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
        ),
      ),
    );
  }
}