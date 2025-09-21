import 'package:ecommerce/Features/main/data/models/orders_model.dart';
import 'package:ecommerce/Features/main/domain/repos/order_repo.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/custom_arrow.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/order_card.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

class MyOrdersView extends StatelessWidget {
  final OrderRepo repo = OrderRepo();
  MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: CustomArrow(isDark: isDark),
          title: Text(
            'My Orders ',
            style: Styles.withColor(
              Styles.textH18,
              isDark ? Colors.white : Colors.black,
            ),
          ),
          bottom: TabBar(
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: isDark ? Colors.grey[400] : Colors.grey[600],
            indicatorColor: Theme.of(context).primaryColor,
            tabs: [
              Tab(text: 'Active'),
              Tab(text: 'Completed'),
              Tab(text: 'Cancelled'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildOrderList(context, OrderStatus.active),
            _buildOrderList(context, OrderStatus.completed),
            _buildOrderList(context, OrderStatus.cancelled),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderList(BuildContext context, OrderStatus status) {
    final order = repo.getOrdersByStatus(status);
    return ListView.builder(
      itemCount: order.length,
      padding: EdgeInsets.all(16),
      itemBuilder: (context, index) {
        OrderCard(onViewDetails: () {}, order: order[index]);
      },
    );
  }
}
