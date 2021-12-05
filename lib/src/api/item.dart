// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Item {
  final Color color;

  final List<int> rgb;

  final String name;

  final String hex;

  Item({
    required this.color,
    required this.name,
    required this.rgb,
    required this.hex,
  });

  Item.loading() : this(color: Colors.grey, name: '...', rgb: [0, 0, 0], hex: "#9e9e9e");

  bool get isLoading => name == '...';
}
/*
// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Item {
  final Color color;

  final int price;

  final String name;

  Item({
    required this.color,
    required this.name,
    required this.price,
  });

  Item.loading() : this(color: Colors.grey, name: '...', price: 0);

  bool get isLoading => name == '...';
}
*/
