import 'dart:ui';

import 'package:flutter_baitap_chuong7/models/product.dart';

class ProductItem extends Product {

  final VoidCallback onTap;
  ProductItem({
    required String name,
    required double price,
    required this.onTap,
  }) : super(name: name, price: price);
  
}