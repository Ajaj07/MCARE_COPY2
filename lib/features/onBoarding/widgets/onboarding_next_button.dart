import 'package:flutter/material.dart';
import 'package:mcare_copy2/common/widgets/Buttons/primary_button.dart';
import 'package:mcare_copy2/features/onBoarding/controller/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      left: 0,
      right: 0,
      // bottom: MSizes.spaceBtwItems,
      // bottom: MDeviceHelper.getBottomNavigationBarHeight(),
      bottom: kBottomNavigationBarHeight,
      child: SizedBox(
        width: double.infinity,
        child: MPButton2(callback: controller.nextPage, label: 'Next'),
      ),
    );
  }
}
