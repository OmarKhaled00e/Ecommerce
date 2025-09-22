import 'package:ecommerce/Features/main/presentation/views/widgets/custom_arrow.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/info_section.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PrivceyPoliceyView extends StatelessWidget {
  const PrivceyPoliceyView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: CustomArrow(isDark: isDark),
        title: Text(
          'Privacy Policy',
          style: Styles.withColor(
            Styles.textH18,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(screenSize.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoSection(
                title: 'Information We Collect ',
                content:
                    'We collect information that you provide directly to us, including name , email address , and shipping information. ',
              ),
              InfoSection(
                title: 'How we Use your Information',
                content:
                    'We use The information we collect to provied , maintain, and inprove our services  process your transacions',
              ),
              InfoSection(
                title: 'Information Sharing',
                content:
                    'We collect information that you provide directly to us, including name , email address , and shipping information. ',
              ),
              InfoSection(
                title: 'Data Security',
                content:
                    'We collect information that you provide directly to us, including name , email address , and shipping information. ',
              ),
              InfoSection(
                title: 'Your Rights',
                content:
                    'We collect information that you provide directly to us, including name , email address , and shipping information. ',
              ),
              InfoSection(
                title: 'Cookie Policy',
                content:
                    'We collect information that you provide directly to us, including name , email address , and shipping information. ',
              ),
              Gap(24),
              Text(
                'Last updated: March 2024',
                style: Styles.withColor(
                  Styles.bodySmall14,
                  isDark ? Colors.grey[400]! : Colors.grey[600]!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
