class ProductModel {
  final String name;
  final String category;
  final double price;
  final double? oldPrice;
  final String imageUrl;
  final bool isFavorite;
  final String description;

  ProductModel({
    required this.name,
    required this.category,
    required this.price,
    this.oldPrice,
    required this.imageUrl,
    this.isFavorite = false,
    required this.description,
  });
}

final List<ProductModel> products = [
  ProductModel(
    name: 'Shoes',
    category: 'Footwear',
    price: 69.00,
    oldPrice: 189.00,
    imageUrl: 'assets/images/shoe.jpg',
    description: 'This is a description of the product 1 ',
  ),
  ProductModel(
    name: 'Laptop',
    category: 'Electoronics',
    price: 69.00,
    oldPrice: 189.00,
    imageUrl: 'assets/images/shoe2.jpg',
    description: 'This is a description of the product 2 ',
  ),
  ProductModel(
    name: 'Jordan Shoes',
    category: 'Footwear',
    price: 69.00,
    oldPrice: 189.00,
    imageUrl: 'assets/images/shoe.jpg',
    description: 'This is a description of the product 3 ',
  ),
  ProductModel(
    name: 'puma',
    category: 'Footwear',
    price: 69.00,
    oldPrice: 189.00,
    imageUrl: 'assets/images/shoes2.jpg',
    description: 'This is a description of the product 4 ',
  ),
];
