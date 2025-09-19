import 'package:ecommerce/core/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomButtomNavBar extends StatelessWidget {
  const CustomButtomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController =
        Get.find<NavigationController>();

    return Obx(() => BottomNavigationBar(
      currentIndex: navigationController.currentIndex.value,
      onTap: (index) => navigationController.changeIndex(index),
      items: [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home_outlined)),
      BottomNavigationBarItem(
        label: 'Shopping',
        icon: Icon(Icons.shopping_bag_outlined)),
      BottomNavigationBarItem(
        label: 'Wishlist',
        icon: Icon(Icons.favorite_outlined)),
      BottomNavigationBarItem(
        label: 'Account',
        icon: Icon(Icons.person_outline)),
    ], ),);
  }
}
