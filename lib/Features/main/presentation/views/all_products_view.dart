import 'package:ecommerce/Features/main/presentation/views/widgets/custom_arrow.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/filter_bottom_sheet.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/product_grid.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AllProductsView extends StatelessWidget {
  const AllProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: CustomArrow(isDark: isDark),
        title: Text(
          'All Products',
          style: Styles.withColor(
            Styles.textH18,
            isDark ? Colors.white : Colors.black,
          ),
        ),
        actions: [
          // search icon
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),

          // filter icon
          IconButton(
            onPressed: () => FilterBottomSheet.show(context),
            icon: Icon(
              Icons.filter_list,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
          

        ],
      ),
      body: ProductGrid(),
    );
  }
}
