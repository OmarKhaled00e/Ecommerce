import 'package:ecommerce/Features/main/presentation/views/widgets/custom_arrow.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/notification_view_body.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: CustomArrow(isDark: isDark),
        title: Text(
          'Notification',
          style: Styles.withColor(
            Styles.textH18,
            isDark ? Colors.white : Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Mark all as read',
              style: Styles.withColor(
                Styles.bodyMedium15,
                Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: NotificationViewBody(),
    );
  }
}
