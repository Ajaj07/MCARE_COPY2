import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mcare_copy2/common/widgets/Buttons/primary_button.dart';
import 'package:mcare_copy2/common/widgets/Buttons/secondary_button.dart';
import 'package:mcare_copy2/features/authentication/registration/phone_registration.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme_screen_util.dart';

///----------------------------[Direct Screen Util]----------------------------------
class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Stack(
            children: [
              /// English Button
              Positioned(
                top: 56.h,
                right: 33.w,
                child: Container(
                  width: 93.w,
                  height: 33.h,
                  alignment: const Alignment(0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(color: const Color(0xFFC2E7D9), width: 1.w),
                  ),
                  child: Text("English", style: MTextTheme.labelMedium),
                ),
              ),

              /// Medcare Logo centered in the screen
              Center(
                child: LogoColumn(textSecondary: MColors.textSecondaryColor, primaryColor: MColors.primaryColor),
              ),

              /// Bottom Buttons Container
              Positioned(
                bottom: kBottomNavigationBarHeight, // Can also use kBottomNavigationBarHeight.h if preferred
                left: 28.w,
                right: 28.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /// Next Button
                    MPButton(label: 'Next', pressed: () => Get.toNamed('/phoneRegistration')),
                    SizedBox(height: 16.h),

                    /// Register Button
                    MSButton(label: 'Register'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoColumn extends StatelessWidget {
  const LogoColumn({super.key, required this.textSecondary, required this.primaryColor});

  final Color textSecondary;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/logo/logo_2.png', width: 183.w, height: 166.h, fit: BoxFit.cover),
        Padding(
          padding: EdgeInsets.only(top: 29.h, left: 28.w, right: 28.w),
          child: Text(
            "We're here to help keep you healthy",
            textAlign: TextAlign.center,
            style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor),
          ),
        ),
      ],
    );
  }
}
