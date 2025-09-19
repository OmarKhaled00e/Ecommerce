import 'package:ecommerce/Features/splash/presentation/views/splash_view.dart';
import 'package:ecommerce/core/controllers/auth_controller.dart';
import 'package:ecommerce/core/controllers/navigation_controller.dart';
import 'package:ecommerce/core/controllers/theme_controller.dart';
import 'package:ecommerce/core/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  Get.put(ThemeController());
  Get.put(AuthController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fahion Store',
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: themeController.theme,
      defaultTransition: Transition.fade,
      home: SplashView(),
    );
  }
}
