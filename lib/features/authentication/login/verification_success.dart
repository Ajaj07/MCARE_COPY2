import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/common/widgets/Buttons/primary_button.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/theme/widget/text_theme_screen_util.dart';

class VerificationSuccess extends StatelessWidget {
  const VerificationSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 28.w, right: 28.w, bottom: kBottomNavigationBarHeight + 15),
          // padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 320.h, bottom: 70.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(flex: 3),

              /// icon
              Image.asset('assets/icons/solid_success.png'),
              SizedBox(height: 60.h),

              /// verification Text
              Text('Verification success', style: MTextTheme.headlineMedium.copyWith(color: MColors.base1Color)),
              SizedBox(height: 14.h),

              /// greeting message
              Text(
                'Congratulations, your account has been verified',
                textAlign: TextAlign.center,
                style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor),
              ),
              // SizedBox(height: 173.h),
              Spacer(flex: 2),

              /// Continue Button
              SizedBox(
                height: 51,
                child: MPButton(
                  label: 'Continue',
                  pressed: () {
                    Get.offAllNamed('/home');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
