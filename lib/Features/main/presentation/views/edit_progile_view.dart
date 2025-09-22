import 'package:ecommerce/Features/main/presentation/views/widgets/custom_arrow.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/profile_from.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/profile_image.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: CustomArrow(isDark: isDark),
        title: Text(
          'Edit Profile',
          style: Styles.withColor(
            Styles.textH18,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(24),
            ProfileImage(),
            Gap(32),
            ProfileFrom(),
          ],
        ),
      ),
    );
  }
}
