import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int length;
  final bool isDark;

  const PageIndicator({
    super.key,
    required this.currentPage,
    required this.length,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(length, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: currentPage == index ? 24 : 8,
          decoration: BoxDecoration(
            color: currentPage == index
                ? Theme.of(context).primaryColor
                : (isDark ? Colors.grey[700] : Colors.grey[300]),
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }
}
