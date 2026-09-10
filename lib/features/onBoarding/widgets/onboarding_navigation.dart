import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controller/onboarding_controller.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: kBottomNavigationBarHeight * 2.5,
      left: 0,
      right: 0,
      child: Align(
        alignment: Alignment.center,
        child: SmoothPageIndicator(
          controller: controller.pageConroller,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: WormEffect(dotHeight: 10, dotWidth: 10),
        ),
      ),
    );
  }
}
