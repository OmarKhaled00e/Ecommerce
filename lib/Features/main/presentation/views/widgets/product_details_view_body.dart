import 'package:ecommerce/Features/main/data/models/product_model.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/size_selector.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // image
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  product.imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              // favorite button
              Positioned(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    product.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: product.isFavorite
                        ? Theme.of(context).primaryColor
                        : (isDark ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ],
          ),
          // product
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        product.name,
                        style: Styles.withColor(
                          Styles.textH24,
                          Theme.of(context).textTheme.headlineLarge!.color!,
                        ),
                      ),
                    ),
                    Text(
                      '\$${product.price.toStringAsFixed(2)}',
                      style: Styles.withColor(
                        Styles.textH24,
                        Theme.of(context).textTheme.headlineLarge!.color!,
                      ),
                    ),
                  ],
                ),
                Text(
                  product.category,
                  style: Styles.withColor(
                    Styles.bodyMedium15,
                    isDark ? Colors.grey[400]! : Colors.grey[600]!,
                  ),
                ),
                Gap(screenHeight * 0.02),
                Text(
                  'Select Size',
                  style: Styles.withColor(
                    Styles.labelMedium14,
                    Theme.of(context).textTheme.headlineLarge!.color!,
                  ),
                ),
                Gap(screenHeight * 0.01),
                // size selecto
                SizeSelector(),
                Gap(screenHeight * 0.02),
                Text(
                  'Description',
                  style: Styles.withColor(
                    Styles.labelMedium14,
                    Theme.of(context).textTheme.headlineLarge!.color!,
                  ),
                ),
                Gap(screenHeight * 0.01),
                Text(
                  product.description,
                  style: Styles.withColor(
                    Styles.bodySmall14,
                    isDark ? Colors.grey[400]! : Colors.grey[600]!,
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
