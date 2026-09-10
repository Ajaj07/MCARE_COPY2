import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:mcare_copy2/features/onBoarding/controller/onboarding_controller.dart';
import 'package:mcare_copy2/features/onBoarding/widgets/onboarding_navigation.dart';
import 'package:mcare_copy2/features/onBoarding/widgets/onboarding_next_button.dart';
import 'package:mcare_copy2/features/onBoarding/widgets/onboarding_page.dart';

class OnBoardingText {
  ///-------------------------------------[ On Borading]----------------------------------------------
  // title
  static const String onBoardingTittle1 = 'Online Consultation';
  static const String onBoardingTittle2 = '24 Hours Ready to Serve';
  static const String onBoardingTittle3 = 'Medical Record Data Patient';
  // sub_title
  static const String onBoardingSubTittle1 =
      'Connect with healthcare professionals virtually for convenient medical advice and support.';
  static const String onBoardingSubTittle2 =
      'Instant access to expert medical assistance. Get the care you need, when you need it, with our app.';
  static const String onBoardingSubTittle3 =
      ' Easily manage and access comprehensive health records, including medical history, test results, and treatment plans, all in one secure place.';
}

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    // print(MDeviceHelper.getScreenWidth(context));
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 0,
          left: 25.w, //MSizes.defaultSpace,
          right: 25.w, // MSizes.defaultSpace,
        ),
        child: Stack(
          children: [
            // Scroable pages
            PageView(
              controller: controller.pageConroller,
              onPageChanged: (value) => controller.updatePageIndicator(value),
              children: [
                OnBoardingPage(
                  image: 'assets/images/onboarding/onboarding_1.png',
                  title: OnBoardingText.onBoardingTittle1,
                  subTitle: OnBoardingText.onBoardingSubTittle1,
                ),
                OnBoardingPage(
                  image: 'assets/images/onboarding/onboarding_2.png',
                  title: OnBoardingText.onBoardingTittle2,
                  subTitle: OnBoardingText.onBoardingSubTittle2,
                ),
                OnBoardingPage(
                  image: 'assets/images/onboarding/onboarding_3.png',
                  title: OnBoardingText.onBoardingTittle3,
                  subTitle: OnBoardingText.onBoardingSubTittle3,
                ),

                // Image.asset(MImages.onBoarding2Image),
                // Image.asset(MImages.onBoarding3Image),
              ],
            ),
            // indicator
            OnBoardingNavigation(),

            // next button
            OnBoardingNextButton(),
          ],
        ),
      ),
    );
  }
}
