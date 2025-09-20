import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomArrow extends StatelessWidget {
  const CustomArrow({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Get.back(),
      icon: Icon(
        Icons.arrow_back_ios,
        color: isDark ? Colors.white : Colors.black,
      ),
    );
  }
}
