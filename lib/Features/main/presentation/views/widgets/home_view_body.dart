import 'package:ecommerce/Features/main/presentation/views/widgets/category_chips.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/custom_search_bar.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/product_grid.dart';
import 'package:ecommerce/Features/main/presentation/views/widgets/sale_banner.dart';
import 'package:ecommerce/core/controllers/theme_controller.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // header section
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
                Gap(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Alex',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      'Good Morning',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                //notification icon
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_outlined),
                ),
                // cart button
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag_outlined),
                ),
                // them button
                GetBuilder<ThemeController>(
                  builder: (controller) => IconButton(
                    onPressed: () => controller.toggleTheme(),
                    icon: Icon(
                      controller.isDarkMode
                          ? Icons.light_mode
                          : Icons.dark_mode,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Search bar
          CustomSearchBar(),

          //category chips
          CategoryChips(),

          // sale banner
          SaleBanner(),
          // popular product
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Product',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
          ),
          // product grid
          Expanded(child: ProductGrid()),
        ],
      ),
    );
  }
}
