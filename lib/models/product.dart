class Product {
    final String name;
  final String description;
  final double price;

  Product({
    required this.name,
    this.description = '',
    required this.price,
  });
}