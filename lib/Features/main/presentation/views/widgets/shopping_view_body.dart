import 'package:ecommerce/Features/main/presentation/views/widgets/category_chips.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/product_grid.dart';
import 'package:flutter/material.dart';

class ShoppingViewBody extends StatelessWidget {
  const ShoppingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 16), child: CategoryChips()),
        Expanded(child: ProductGrid()),
      ],
    );
  }
}
