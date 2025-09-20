import 'package:ecommerce/Features/main/presentation/views/widgets/build_menu_section.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/build_profile_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SingleChildScrollView(
      child: Column(
        children: [BuildProfileSection(), Gap(24), BuildMenuSection()],
      ),
    );
  }
}

