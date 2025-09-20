import 'package:ecommerce/core/controllers/theme_controller.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildSection(title: 'Appearance', children: [BuildThemeToggle()]),
          BuildSection(
            title: 'Notifications',
            children: [
              BuildSwitchTile(
                initialValue: true,
                title: 'Push Notifications',
                subTitle:
                    'Receive push notifications about orders and promotions',
              ),
              BuildSwitchTile(
                initialValue: true,
                title: 'Email Notifications',
                subTitle: 'Receive email updates about your orders',
              ),
            ],
          ),

          BuildSection(
            title: 'Privacy',
            children: [
              BuildNavigationTile(
                title: 'Privacy Policy',
                subTitle: 'View our privacy policy',
                icon: Icons.privacy_tip_outlined,
              ),
              BuildNavigationTile(
                title: 'Terms of Service',
                subTitle: 'Read our rerms of service',
                icon: Icons.description_outlined,
              ),
            ],
          ),
          BuildSection(
            title: 'About',
            children: [
              BuildNavigationTile(
                title: 'App Version',
                subTitle: '1.0.0',
                icon: Icons.info_outline,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BuildSection extends StatelessWidget {
  const BuildSection({super.key, required this.title, required this.children});
  final String title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(24, 24, 24, 8),
          child: Text(
            title,
            style: Styles.withColor(
              Styles.textH18,
              isDark ? Colors.grey[400]! : Colors.grey[600]!,
            ),
          ),
        ),
        ...children,
      ],
    );
  }
}

class BuildThemeToggle extends StatelessWidget {
  const BuildThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GetBuilder<ThemeController>(
      builder: (controller) => Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: isDark
                  ? Colors.black.withOpacity(0.2)
                  : Colors.grey.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ListTile(
          leading: Icon(
            controller.isDarkMode ? Icons.dark_mode : Icons.light_mode,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(
            'Dark Mode',
            style: Styles.withColor(
              Styles.bodyMedium15,
              Theme.of(context).textTheme.bodyLarge!.color!,
            ),
          ),
          trailing: Switch.adaptive(
            value: controller.isDarkMode,
            onChanged: (value) => controller.toggleTheme(),
            activeColor: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}

class BuildSwitchTile extends StatelessWidget {
  const BuildSwitchTile({
    super.key,
    required this.subTitle,
    required this.title,
    required this.initialValue,
  });
  final String subTitle;
  final String title;
  final bool initialValue;
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withOpacity(0.2)
                : Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: Styles.withColor(
            Styles.bodyMedium15,
            Theme.of(context).textTheme.bodyLarge!.color!,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: Styles.withColor(
            Styles.bodySmall14,
            isDark ? Colors.grey[400]! : Colors.grey[600]!,
          ),
        ),
        trailing: Switch.adaptive(
          value: initialValue,
          onChanged: (value) {},
          activeColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class BuildNavigationTile extends StatelessWidget {
  const BuildNavigationTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });
  final String title;
  final String subTitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withOpacity(0.2)
                : Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(
          title,
          style: Styles.withColor(
            Styles.bodyMedium15,
            Theme.of(context).textTheme.bodyLarge!.color!,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: Styles.withColor(
            Styles.bodySmall14,
            isDark ? Colors.grey[400]! : Colors.grey[600]!,
          ),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: isDark ? Colors.grey[400]! : Colors.grey[600]!,
        ),
        onTap: () {},
      ),
    );
  }
}
