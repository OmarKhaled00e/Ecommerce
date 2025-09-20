import 'package:ecommerce/Features/main/presentation/views/widgets/custom_arrow.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/settings_view_body.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: CustomArrow(isDark: isDark),
        title: Text(
          'Settings',
          style: Styles.withColor(
            Styles.textH18,
            isDark ? Colors.white : Colors.black,
          ),
        ),
      ),
      body: SettingsViewBody(),
    );
  }
}
