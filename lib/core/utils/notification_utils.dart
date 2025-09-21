import 'package:ecommerce/Features/main/data/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationUtils {
  static IconData getNotificationIcon(NotificationModel type) {
    switch (type) {
      case NotificationModel.order:
        return Icons.shopping_bag_outlined;
      case NotificationModel.delivery:
        return Icons.local_shipping_outlined;
      case NotificationModel.promo:
        return Icons.local_offer_outlined;
      case NotificationModel.payment:
        return Icons.payment_outlined;
    }
  }

  static Color getIconBackgroundColor(
    BuildContext context,
    NotificationModel type,
  ) {
    switch (type) {
      case NotificationModel.order:
        return Theme.of(context).primaryColor.withOpacity(0.1);
      case NotificationModel.delivery:
        return Colors.green[100]!;
      case NotificationModel.promo:
        return Colors.orange[100]!;
      case NotificationModel.payment:
        return Colors.red[100]!;
    }
  }

  static Color getIconColor(BuildContext context, NotificationModel type) {
    switch (type) {
      case NotificationModel.order:
        return Theme.of(context).primaryColor;
      case NotificationModel.delivery:
        return Colors.green;
      case NotificationModel.promo:
        return Colors.orange;
      case NotificationModel.payment:
        return Colors.red;
    }
  }
}
