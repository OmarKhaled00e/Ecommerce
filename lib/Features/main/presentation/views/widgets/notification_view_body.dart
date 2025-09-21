import 'package:ecommerce/Features/main/data/models/notification_model.dart';
import 'package:ecommerce/Features/main/domain/repos/notification_repo.dart';
import 'package:ecommerce/core/utils/notification_utils.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotificationViewBody extends StatelessWidget {
  final NotificationRepo repo = NotificationRepo();
  NotificationViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final notifications = repo.getNotifications();
    return ListView.builder(
      itemCount: notifications.length,
      padding: EdgeInsets.all(16),

      itemBuilder: (context, index) {
        return BuildNotificationCard(notifications: notifications[index]);
      },
    );
  }
}

class BuildNotificationCard extends StatelessWidget {
  const BuildNotificationCard({super.key, required this.notifications});
  final NotificationItem notifications;
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: notifications.isRead
            ? Theme.of(context).cardColor
            : Theme.of(context).primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withOpacity(0.2)
                : Colors.grey.withOpacity(0.1),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: NotificationUtils.getIconBackgroundColor(
              context,
              notifications.type,
            ),
            shape: BoxShape.circle,
          ),
          child: Icon(
            NotificationUtils.getNotificationIcon(notifications.type),
            color: NotificationUtils.getIconColor(context, notifications.type),
          ),
        ),
        title: Text(
          notifications.title,
          style: Styles.withColor(
            Styles.bodyLarge16,
            Theme.of(context).textTheme.bodyLarge!.color!,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(4),
            Text(
              notifications.message,
              style: Styles.withColor(
                Styles.bodySmall14,
                isDark ? Colors.grey[400]! : Colors.grey[600]!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
