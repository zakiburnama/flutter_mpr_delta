// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'item.dart';
import 'page.dart';

const catalogLength = 200;

var dataColor;
var dataCodeColor;
var dataJsonColor;
var dataJsonCodeColor;
List<Object> list = [];

/// This function emulates a REST API call. You can imagine replacing its
/// contents with an actual network call, keeping the signature the same.
///
/// It will fetch a page of items from [startingIndex].
Future<ItemPage> fetchPage(int startingIndex) async {
  // We're emulating the delay inherent to making a network call
  await getData();

  await Future<void>.delayed(const Duration(milliseconds: 500));

  // If the [startingIndex] is beyond the bounds of the catalog, an
  // empty page will be returned.
  if (startingIndex > catalogLength) {
    return ItemPage(
      items: [],
      startingIndex: startingIndex,
      hasNext: false,
    );
  }

  // The page of items is generated here.
  return ItemPage(
    items: List.generate(
        itemsPerPage,
        (index) => Item(
              color: Colors.primaries[index % Colors.primaries.length],
              name: (list[index] as Map)['name'].toString(),
              rgb: [(list[index] as Map)['rgb'][0],(list[index] as Map)['rgb'][1],(list[index] as Map)['rgb'][2]],
              hex: (list[index] as Map)['hex'],
            )),
    startingIndex: startingIndex,
    // Returns `false` if we've reached the [catalogLength].
    hasNext: startingIndex + itemsPerPage < catalogLength,
  );
}

Future<void> getData() async {
  var url1 = "https://raw.githubusercontent.com/corysimmons/colors.json/master/colors.json";
  var url2 = "https://raw.githubusercontent.com/bahamas10/css-color-names/master/css-color-names.json";

  http.Response responseRGB = await http.get(Uri.parse(url1));
  http.Response responseHex = await http.get(Uri.parse(url2));
  
  if (responseRGB.statusCode == 200) {
    dataJsonColor = responseRGB.body;
    dataJsonCodeColor = responseHex.body;
    dataColor = jsonDecode(dataJsonColor);
    dataCodeColor = jsonDecode(dataJsonCodeColor);

    dataColor.forEach((key, value) {
      if(dataCodeColor.containsKey(key)) {
        list.add({'name': key, 'rgb': value, 'hex': dataCodeColor[key].toString()});
      }
    });
  } else {
      print(responseRGB.statusCode);
  }
}