
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BuildProfileSection extends StatelessWidget {
  const BuildProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[850]! : Colors.grey[100]!,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
          ),
          Gap(16),
          Text(
            'Alex Johnson',
            style: Styles.withColor(
              Styles.textH24,
              Theme.of(context).textTheme.bodyLarge!.color!,
            ),
          ),
          Gap(4),
          Text(
            'alatjohnson@gmail.com',
            style: Styles.withColor(
              Styles.bodyMedium15,
              isDark ? Colors.grey[400]! : Colors.grey[600]!,
            ),
          ),
          Gap(16),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              side: BorderSide(
                color: isDark? Colors.white70 : Colors.black12,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Edit Profile',
              style: Styles.withColor(
                Styles.buttonMedium15,
                Theme.of(context).textTheme.bodyLarge!.color!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
