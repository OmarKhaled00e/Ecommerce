import 'package:ecommerce/Features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ProfileFrom extends StatelessWidget {
  const ProfileFrom({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: isDark
                      ? Colors.black.withOpacity(0.2)
                      : Colors.grey.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: CustomTextField(
              label: 'Full Name',
              prefixIcon: Icons.person_outline,
              initalValue: 'Alex Johnson',
            ),
          ),
          Gap(16),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: isDark
                      ? Colors.black.withOpacity(0.2)
                      : Colors.grey.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: CustomTextField(
              label: 'Email',
              prefixIcon: Icons.email_outlined,
              initalValue: 'AlexJohnson@gmail.com',
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Gap(16),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: isDark
                      ? Colors.black.withOpacity(0.2)
                      : Colors.grey.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: CustomTextField(
              label: 'Phone Number',
              prefixIcon: Icons.phone_outlined,
              initalValue: '01239333939',
              keyboardType: TextInputType.phone,
            ),
          ),
          Gap(32),
          SizedBox(
            width: double.infinity,
            
            child: ElevatedButton(
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16,),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )
              ),
              child: Text(
                'Save Changes',
                style: Styles.withColor(Styles.buttonMedium15, Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
