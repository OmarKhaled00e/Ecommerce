import 'package:ecommerce/Features/auth/presentation/views/sign_in_view.dart';
import 'package:ecommerce/Features/onboarding/data/models/onboarding_item_model.dart';
import 'package:ecommerce/Features/onboarding/presentation/views/widgets/onboarding_button.dart';
import 'package:ecommerce/Features/onboarding/presentation/views/widgets/onboarding_page.dart';
import 'package:ecommerce/Features/onboarding/presentation/views/widgets/page_indicator.dart';
import 'package:ecommerce/core/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingItemModel> _items = [
    OnboardingItemModel(
      image: 'assets/images/intro.png',
      title: 'Discover Latest Trends',
      description:
          'Explore the newest fashion trends and find your unique style',
    ),
    OnboardingItemModel(
      image: 'assets/images/intro1.png',
      title: 'Quality Products',
      description: 'Shop premium quality products from top brands worldwide',
    ),
    OnboardingItemModel(
      image: 'assets/images/intro2.png',
      title: 'Easy Shopping',
      description: 'Simple and secure shopping experience at your fingertips',
    ),
  ];

  // handle get started button pressed
  void _handleGetStarted() {
    final AuthController authController = Get.find<AuthController>();
    authController.setFirstTimeDone();
    Get.off(() => SignInView());
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Stack(
      children: [
        ///  Page View
        PageView.builder(
          controller: _pageController,
          itemCount: _items.length,
          onPageChanged: (value) {
            setState(() {
              _currentPage = value;
            });
          },
          itemBuilder: (context, index) {
            return OnboardingPage(item: _items[index]);
          },
        ),

        ///  Indicator
        Positioned(
          bottom: 80,
          left: 0,
          right: 0,
          child: PageIndicator(
            currentPage: _currentPage,
            length: _items.length,
            isDark: isDark,
          ),
        ),

        ///  Buttons
        Positioned(
          bottom: 16,
          right: 16,
          left: 16,
          child: OnboardingButtons(
            currentPage: _currentPage,
            itemsLength: _items.length,
            pageController: _pageController,
            onGetStarted: _handleGetStarted,
            isDark: isDark,
          ),
        ),
      ],
    );
  }
}

