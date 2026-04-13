import 'package:flutter/material.dart';
import 'package:flutter_baitap_chuong7/models/product.dart';
import 'package:flutter_baitap_chuong7/models/product_item.dart';
import 'package:flutter_baitap_chuong7/view/4/product_detail_view.dart';
import 'package:flutter_baitap_chuong7/widget/product_card.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProductListViewState();
  }
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    final items = List<ProductItem>.generate(
      20,
      (index) => ProductItem(
        name: 'Sản phẩm ${index + 1}',
        price: (index + 1) * 10000.0,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ProductDetailView(
                product: Product(
                  name: 'Sản phẩm ${index + 1}',
                  price: (index + 1) * 10000.0,
                ),
              ),
            ),
          );
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài 4: Product List'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Danh sách sản phẩm',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ProductCard(item: items[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
