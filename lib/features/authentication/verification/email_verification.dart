import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/common/widgets/Buttons/primary_button.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../common/widgets/Buttons/appbar_button.dart';
import '../../../utils/constants/sizes.dart';

///--------------[Direct Screen Util]-----------------------
class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        titleSpacing: 0,
        leading: AppbarButton(icon: Icons.chevron_left, onPressed: () => Get.back()),
        title: Text('Register', style: MTextTheme.bold.copyWith(color: const Color(0XFF090909))),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MSizes.defaultHorizontalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),

            /// Verification text
            Text(
              'Enter the 4-digit verification code (OTP) sent to your email',
              textAlign: TextAlign.center,
              style: MTextTheme.regular,
            ),
            SizedBox(height: 20.h),

            /// email
            Align(
              alignment: Alignment.center,
              child: Text('info@gmail.com', style: MTextTheme.bold),
            ),

            /// verification OTP
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 50.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 20.w,
                children: [_buildOtpBox('1'), _buildOtpBox('1'), _buildOtpBox(''), _buildOtpBox('')],
              ),
            ),

            /// Continue Button
            MPButton(
              label: 'Continue',
              pressed: () {
                Get.toNamed('/phoneVerification');
              },
            ),
            SizedBox(height: 16.h),

            /// Resend text
            Align(
              alignment: Alignment.center,
              child: Text(
                'Resend in 60 seconds',
                style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  Widget _buildOtpBox(String text) {
    return Expanded(
      child: Container(
        width: 60.w,
        height: 60.h,
        alignment: const Alignment(0, 0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(color: MColors.secondaryColor, width: 1.w),
        ),
        child: Text(text, style: MTextTheme.labelMedium.copyWith(fontSize: 32.sp)),
      ),
    );
  }
}
