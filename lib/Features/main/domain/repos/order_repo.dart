import 'package:ecommerce/Features/main/data/models/orders_model.dart';

class OrderRepo {
  List<OrderModel> getOrders() {
    return [
      OrderModel(
        orderNumber: '123432',
        itemCount: 2,
        totalAmount: 2938.3,
        status: OrderStatus.active,
        imageUrl: 'assets/images/laptop.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 2)),
      ),
      OrderModel(
        orderNumber: '322422',
        itemCount: 1,
        totalAmount: 432.3,
        status: OrderStatus.active,
        imageUrl: 'assets/images/shoe.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 1)),
      ),
      OrderModel(
        orderNumber: '643353',
        itemCount: 2,
        totalAmount: 32.3,
        status: OrderStatus.completed,
        imageUrl: 'assets/images/shoe2.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 3)),
      ),
      OrderModel(
        orderNumber: '25242',
        itemCount: 5,
        totalAmount: 4932.3,
        status: OrderStatus.cancelled,
        imageUrl: 'assets/images/shoes2.jpg',
        orderDate: DateTime.now().subtract(Duration(hours: 7)),
      ),
    ];
  }

  List<OrderModel> getOrdersByStatus(OrderStatus status) {
    return getOrders().where((order) => order.status == status).toList();
  }
}
