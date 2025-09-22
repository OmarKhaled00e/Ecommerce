import 'dart:ui_web';

import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ContactSupportSection extends StatelessWidget {
  const ContactSupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(
            Icons.headset_mic_outlined,
            color: Theme.of(context).primaryColor,
            size: 48,
          ),
          Gap(16),
          Text(
            'Still need help?',
            style: Styles.withColor(
              Styles.textH18,
              Theme.of(context).textTheme.bodyLarge!.color!,
            ),
          ),
          Gap(8),
          Text(
            'Contact our support team ',
            textAlign: TextAlign.center,
            style: Styles.withColor(
              Styles.bodyMedium15,
              isDark ? Colors.grey[400]! : Colors.grey[600]!,
            ),
          ),
          Gap(16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Contact Support',
              style: Styles.withColor(Styles.buttonMedium15, Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
