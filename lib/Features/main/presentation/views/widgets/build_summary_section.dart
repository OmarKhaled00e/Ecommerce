import 'package:ecommerce/Features/main/data/models/product_model.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BuildSummarySection extends StatelessWidget {
  const BuildSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final favoriteProducts = products.where((p) => p.isFavorite).length;
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[850] : Colors.grey[100],
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$favoriteProducts Item',
                style: Styles.withColor(
                  Styles.textH24,
                  Theme.of(context).textTheme.bodyLarge!.color!,
                ),
              ),
              Gap(4),
              Text(
                'in your wishlist',
                style: Styles.withColor(
                  Styles.textH24,
                  isDark ? Colors.grey[400]! : Colors.grey[600]!,
                ),
              ),
            ],
          ),
          ElevatedButton(onPressed: () {}, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12)
          ),
          child: Text('Add All to Cart',
          style: Styles.withColor(
                  Styles.buttonMedium15,
                  Colors.white,
                ),)),
        ],
      ),
    );
  }
}
