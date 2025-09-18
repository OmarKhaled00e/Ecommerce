import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OnboardingButtons extends StatelessWidget {
  final int currentPage;
  final int itemsLength;
  final PageController pageController;
  final VoidCallback onGetStarted;
  final bool isDark;

  const OnboardingButtons({
    super.key,
    required this.currentPage,
    required this.itemsLength,
    required this.pageController,
    required this.onGetStarted,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: onGetStarted,
          child: Text(
            'Skip',
            style: Styles.withColor(
              Styles.buttonMedium15,
              isDark ? Colors.grey[400]! : Colors.grey[600]!,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (currentPage < itemsLength - 1) {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } else {
              onGetStarted();
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            currentPage < itemsLength - 1 ? 'Next' : 'Get Started',
            style: Styles.withColor(Styles.buttonMedium15, Colors.white),
          ),
        ),
      ],
    );
  }
}
