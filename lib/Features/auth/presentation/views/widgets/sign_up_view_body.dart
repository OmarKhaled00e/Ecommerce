import 'package:ecommerce/Features/auth/presentation/views/sign_in_view.dart';
import 'package:ecommerce/Features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:ecommerce/Features/main/presentation/views/main_view.dart';
import 'package:ecommerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
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
            Text(
              'create Account',
              style: Styles.withColor(
                Styles.textH32,
                Theme.of(context).textTheme.bodyLarge!.color!,
              ),
            ),
            Gap(8),

            Text(
              'Signup to get started',
              style: Styles.withColor(
                Styles.bodyLarge16,
                isDark ? Colors.grey[400]! : Colors.grey[600]!,
              ),
            ),
            Gap(40),
            // full name textfield
            CustomTextField(
              label: 'Full Name',
              prefixIcon: Icons.person_outlined,
              keyboardType: TextInputType.name,
              controller: _nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            Gap(16),
            // email textfield
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
            Gap(16),
            // possword text field
            CustomTextField(
              label: 'Password',
              prefixIcon: Icons.lock_outline,
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
              controller: _passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Password';
                }
                return null;
              },
            ),
            Gap(16),
            // confirm password textfield
            CustomTextField(
              label: 'Confirm Password',
              prefixIcon: Icons.person_outlined,
              keyboardType: TextInputType.name,
              isPassword: true,
              controller: _nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please confirm your name';
                }
                if (value != _passwordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
            ),
            Gap(24),
            // Sign up button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => MainView()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: Styles.withColor(Styles.buttonMedium15, Colors.white),
                ),
              ),
            ),
            Gap(24),

            // signin textbutton
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: Styles.withColor(
                    Styles.bodyMedium15,
                    isDark ? Colors.grey[400]! : Colors.grey[600]!,
                  ),
                ),
                TextButton(
                  onPressed: () => Get.off(() => SignInView()),
                  child: Text('SignIn',
                  style: Styles.withColor(
                    Styles.buttonMedium15,
                    Theme.of(context).primaryColor,
                  ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
