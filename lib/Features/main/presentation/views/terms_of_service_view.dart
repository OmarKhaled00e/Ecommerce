import 'package:ecommerce/Features/main/presentation/views/widgets/custom_arrow.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/info_section.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TermsOfServiceView extends StatelessWidget {
  const TermsOfServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: CustomArrow(isDark: isDark),
        title: Text(
          'Terms of Service',
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
                title: 'Welcome To fashion Store',
                content:
                    'By accessing and using this application you accept and agree to be bound by the terms and provision',
              ),
              InfoSection(
                title: 'Account Registration',
                content:
                    'By accessing and using this application you accept and agree to be bound by the terms and provision',
              ),
              InfoSection(
                title: 'User resposibites',
                content:
                    'By accessing and using this application you accept and agree to be bound by the terms and provision',
              ),
              InfoSection(
                title: 'Privacy Policy',
                content:
                    'By accessing and using this application you accept and agree to be bound by the terms and provision',
              ),
              InfoSection(
                title: 'Intellectual Property',
                content:
                    'By accessing and using this application you accept and agree to be bound by the terms and provision',
              ),
              InfoSection(
                title: 'Termenail',
                content:
                    'By accessing and using this application you accept and agree to be bound by the terms and provision',
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
