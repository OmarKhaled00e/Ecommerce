import 'package:ecommerce/Features/main/data/models/product_model.dart';
import 'package:ecommerce/Features/main/presentation/views/product_details_view.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/poroduct_card.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[0];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailsView(product: product),
            ),
          ),
          child: ProductCard(product: product),
        );
      },
    );
  }
}
