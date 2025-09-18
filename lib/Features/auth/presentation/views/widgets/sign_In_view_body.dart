import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(40),
          Text(
            'Welcome Back!',
            style: Styles.withColor(
              Styles.textH32,
              Theme.of(context).textTheme.bodyLarge!.color!,
            ),
          ),
          Gap(8),
          Text(
            'Sign in to continue shopping',
            style: Styles.withColor(
              Styles.textH32,
              isDark ? Colors.grey[400]!: Colors.grey[600]!,
            ),
          ),
          Gap(40),
          // email textfield

        ],
      ),
    );
  }
}
