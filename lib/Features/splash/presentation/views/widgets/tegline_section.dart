import 'package:flutter/material.dart';

class TaglineSection extends StatelessWidget {
  const TaglineSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 48,
      left: 0,
      right: 0,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 1200),
        builder: (context, value, child) {
          return Opacity(opacity: value, child: child);
        },
        child: Text(
          'Style Meets Simplicity',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 14,
            letterSpacing: 2,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
