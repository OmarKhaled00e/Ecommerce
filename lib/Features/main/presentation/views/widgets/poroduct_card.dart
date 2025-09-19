import 'package:ecommerce/Features/main/data/models/product_model.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      constraints: BoxConstraints(maxWidth: screenWidth * 0.9),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withOpacity(0.3)
                : Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // image
              AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    product.imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //favorite button
              Positioned(
                right: 8,
                top: 8,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    product.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_outline,
                    color: product.isFavorite
                        ? Theme.of(context).primaryColor
                        : isDark
                        ? Colors.grey[400]
                        : Colors.grey,
                  ),
                ),
              ),
              if (product.oldPrice != null)
                Positioned(
                  left: 8,
                  top: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    // discount text
                    child: Text(
                      '${calculateDiscount(product.price,product.oldPrice!)}% OFF',
                      style: Styles.withColor(
                        Styles.withWeight(Styles.bodySmall14, FontWeight.bold),
                        Colors.white,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          // product details
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // name
                Text(
                  product.name,
                  style: Styles.withColor(
                    Styles.withWeight(Styles.textH18, FontWeight.bold),
                    Theme.of(context).textTheme.bodyLarge!.color!,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Gap(screenWidth * 0.01),
                Text(
                  product.category,
                  style: Styles.withColor(
                    Styles.bodyMedium15,
                    isDark ? Colors.grey[400]! : Colors.grey[600]!,
                  ),
                ),
                Gap(screenWidth * 0.01),
                Row(
                  children: [
                    Text(
                      '\$${product.price.toStringAsFixed(2)}',
                      style: Styles.withColor(
                        Styles.withWeight(Styles.bodyLarge16, FontWeight.bold),
                        Theme.of(context).textTheme.bodyLarge!.color!,
                      ),
                    ),
                    if (product.oldPrice != null) ...[
                      Gap(screenWidth * 0.01),
                      Text(
                        '\$${product.oldPrice!.toStringAsFixed(2)}',
                        style: Styles.withColor(
                          Styles.bodySmall14,
                          isDark? Colors.grey[400]!: Colors.grey[600]!
                        ).copyWith(decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int calculateDiscount(double currentPrice, double oldPrice){
    return (((oldPrice-currentPrice)/ oldPrice) *100).round();
  }
}
