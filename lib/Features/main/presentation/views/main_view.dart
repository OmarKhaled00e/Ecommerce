import 'package:ecommerce/Features/main/presentation/views/account_view.dart';
import 'package:ecommerce/Features/main/presentation/views/home_view.dart';
import 'package:ecommerce/Features/main/presentation/views/shopping_view.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/custom_buttom_nav_bar.dart';
import 'package:ecommerce/Features/main/presentation/views/wishlist_view.dart';
import 'package:ecommerce/core/controllers/navigation_controller.dart';
import 'package:ecommerce/core/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController =
        Get.find<NavigationController>();
    return GetBuilder<ThemeController>(
      builder: (ThemeController) => Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: Obx(
            () => IndexedStack(
              key: ValueKey(navigationController.currentIndex.value),
              index: navigationController.currentIndex.value,
              children: [
                HomeView(),
                ShoppingView(),
                WishlistView(),
                AccountView(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomButtomNavBar(),
      ),
    );
  }
}
