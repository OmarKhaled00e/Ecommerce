import 'package:ecommerce/Features/main/presentation/views/widgets/cart_view_body.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/custom_arrow.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: CustomArrow(isDark: isDark),
        title: Text(
          'My Cart',
          style: Styles.withColor(
            Styles.textH18,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: CartViewBody(),
    );
  }
}

