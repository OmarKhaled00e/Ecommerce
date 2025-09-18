import 'package:ecommerce/Features/auth/presentation/views/sign_in_view.dart';
import 'package:ecommerce/Features/main/presentation/views/main_view.dart';
import 'package:ecommerce/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:ecommerce/Features/splash/presentation/views/widgets/background_pattern.dart';
import 'package:ecommerce/Features/splash/presentation/views/widgets/logo_section.dart';
import 'package:ecommerce/Features/splash/presentation/views/widgets/tegline_section.dart';
import 'package:ecommerce/Features/splash/presentation/views/widgets/title_section.dart';
import 'package:ecommerce/core/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';

class SplashViewBody extends StatelessWidget {
  SplashViewBody({super.key});
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    // navigate based on auth state after 2.5 seconds
    Future.delayed(const Duration(milliseconds: 2500), () {
      if (authController.isFirstTime) {
        Get.off(() => OnboardingView());
      } else if (authController.isLoggedIn) {
        Get.off(() => MainView());
      } else {
        Get.off(() => SignInView());
      }
    });

    return Stack(
      children: const [
        BackgroundPattern(),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoSection(),
              SizedBox(height: 32),
              TitleSection(),
            ],
          ),
        ),
        TaglineSection(),
      ],
    );
  }
}
