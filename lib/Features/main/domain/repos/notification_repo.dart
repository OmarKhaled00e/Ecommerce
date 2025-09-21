import 'package:ecommerce/Features/main/data/models/notification_model.dart';

class NotificationRepo {
  List<NotificationItem> getNotifications() {
    return [
      NotificationItem(
        title: 'Order Confirmed',
        message: 'Your order #123456 has been confirmed and is beign processed',
        time: '2 minutes age',
        type: NotificationModel.order,
        isRead: true,
      ),
      NotificationItem(
        title: 'Special Offer!',
        message: 'Get 20% off on all shoes this weekend!',
        time: '1 hour age',
        type: NotificationModel.promo,
        isRead: true,
      ),
      NotificationItem(
        title: 'Out for Delivery',
        message: 'Your order #123443 is out for delivery',
        time: '3 hour age',
        type: NotificationModel.delivery,
        isRead: true,
      ),
      NotificationItem(
        title: 'Payment Successful',
        message: 'Payment for order #43232 was successful ',
        time: '3 hour age',
        type: NotificationModel.payment,
        isRead: true,
      ),
    ];
  }
}
