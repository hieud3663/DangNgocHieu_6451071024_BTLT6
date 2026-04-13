import 'package:flutter/material.dart';
import 'package:flutter_baitap_chuong7/models/product.dart';
import 'package:flutter_baitap_chuong7/models/product_item.dart';

class ProductDetailView extends StatefulWidget {
  final Product product;
  const ProductDetailView({super.key, required this.product});


  @override
  State<StatefulWidget> createState() {
    return _ProductDetailViewState();
  }
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    final Product product = widget.product;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Đây là trang chi tiết sản phẩm !',
              style: const TextStyle(fontSize: 20)
            ),
            Text(
              'Tên sản phẩm: ${product.name}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Giá sản phẩm: ${product.price.toStringAsFixed(0)} đ',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}