import 'package:ecommerce/Features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  ForgetPasswordViewBody({super.key});
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //back button
            IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios,
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            Gap(20),
            //reset password text
            Text(
              'Reset Password',
              style: Styles.withColor(
                Styles.textH32,
                Theme.of(context).textTheme.bodyLarge!.color!,
              ),
            ),
            Gap(8),
            Text(
              'Enter your email to reset your password',
              style: Styles.withColor(
                Styles.bodyLarge16,
                isDark ? Colors.grey[400]! : Colors.grey[600]!,
              ),
            ),
            Gap(40),
            // email Text field
            CustomTextField(
              label: 'Email',
              prefixIcon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                if (!GetUtils.isEmail(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            Gap(24),
            // send reset link button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  showSuccessDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Send Reset Link',
                  style: Styles.withColor(Styles.buttonMedium15, Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showSuccessDialog(BuildContext context) {
    Get.dialog(
      AlertDialog(
        title: Text('Check Your Emaill', style: Styles.textH18),
        content: Text(
          'We have sent password recovery instructions to your email.',
          style: Styles.bodyMedium15,
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(
              'OK',
              style: Styles.withColor(
                Styles.buttonMedium15,
                Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
