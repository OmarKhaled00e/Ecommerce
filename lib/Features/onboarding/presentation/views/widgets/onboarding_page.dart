import 'package:ecommerce/Features/onboarding/data/models/onboarding_item_model.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingItemModel item;
  const OnboardingPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          item.image,
          height: MediaQuery.of(context).size.height * 0.4,
        ),
        Gap(40),
        Text(
          item.title,
          textAlign: TextAlign.center,
          style: Styles.withColor(
            Styles.textH32,
            Theme.of(context).textTheme.bodyLarge!.color!,
          ),
        ),
        Gap(16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            item.description,
            textAlign: TextAlign.center,
            style: Styles.withColor(
              Styles.bodyLarge16,
              isDark ? Colors.grey[400]! : Colors.grey[600]!,
            ),
          ),
        ),
      ],
    );
  }
}
