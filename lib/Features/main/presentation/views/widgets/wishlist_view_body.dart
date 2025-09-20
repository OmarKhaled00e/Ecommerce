import 'package:ecommerce/Features/main/data/models/product_model.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/build_summary_section.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/build_wishlist_item.dart';
import 'package:flutter/material.dart';

class WishlistViewBody extends StatelessWidget {
  const WishlistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return CustomScrollView(
      slivers: [
        //summary Section
        SliverToBoxAdapter(child: BuildSummarySection()),
        //wishlist items
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return BuildWishlistItem(
                product: products.where((p) => p.isFavorite).toList()[index],
              );
            }, childCount: products.where((p) => p.isFavorite).length),
          ),
        ),
      ],
    );
  }
}
