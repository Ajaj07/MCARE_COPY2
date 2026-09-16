import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/common/widgets/Buttons/primary_button.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

///-----------------------------[with out screen Util]-----------------------
/*
class PhoneVerification extends StatelessWidget {
  const PhoneVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 28, right: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Back Button Row
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.chevron_left),
                ),
                SizedBox(width: 12),
                Text('Register', style: MTextTheme.bold.copyWith(color: const Color(0XFF090909))),
              ],
            ),
            SizedBox(height: 147),

            /// Verification text
            Text(
              'Enter the 4-digit verification code (OTP) sent to your email',
              textAlign: TextAlign.center,
              style: MTextTheme.regular,
            ),
            SizedBox(height: 20),

            /// email
            Align(
              alignment: Alignment.center,
              child: Text('(+66) 6152 625 612', style: MTextTheme.bold),
            ),
            // SizedBox(height: 50),

            /// verification OTP
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 20,
                children: [
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: MColors.secondaryColor, width: 1),
                      ),
                      child: Text('7', style: MTextTheme.labelMedium.copyWith(fontSize: 32.sp)),
                    ),
                  ),
                  // 2'nd
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: MColors.secondaryColor, width: 1),
                      ),
                      child: Text('3', style: MTextTheme.labelMedium.copyWith(fontSize: 32.sp)),
                    ),
                  ),
                  // 3'rd Box
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: MColors.secondaryColor, width: 1),
                      ),
                      child: Text('', style: MTextTheme.labelMedium.copyWith(fontSize: 32.sp)),
                    ),
                  ),
                  // 4'th Box
                  Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: MColors.secondaryColor, width: 1),
                      ),
                      child: Text('', style: MTextTheme.labelMedium.copyWith(fontSize: 32.sp)),
                    ),
                  ),
                ],
              ),
            ),

            ///Continue Button
            MPButton(label: 'Continue', pressed: () => Get.toNamed('/login')),
            SizedBox(height: 16),

            ///  Resend text
            Align(
              alignment: Alignment.center,
              child: Text(
                'Resend in 60 seconds',
                style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

///-----------------------------[with out screen Util]-----------------------
class PhoneVerification extends StatelessWidget {
  const PhoneVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 35.h, left: 28.w, right: 28.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Back Button Row
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.chevron_left),
                ),
                SizedBox(width: 5.w),
                Text('Register', style: MTextTheme.bold.copyWith(color: const Color(0XFF090909))),
              ],
            ),
            SizedBox(height: 147.h),

            /// Verification text
            Text(
              'Enter the 4-digit verification code (OTP) sent to your email',
              textAlign: TextAlign.center,
              style: MTextTheme.regular,
            ),
            SizedBox(height: 20.h),

            /// Phone number
            Align(
              alignment: Alignment.center,
              child: Text('(+66) 6152 625 612', style: MTextTheme.bold),
            ),

            /// verification OTP
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 50.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 20.w,
                children: [_buildOtpBox('7'), _buildOtpBox('3'), _buildOtpBox(''), _buildOtpBox('')],
              ),
            ),

            /// Continue Button
            MPButton(label: 'Continue', pressed: () => Get.toNamed('/login')),
            SizedBox(height: 16.h),

            /// Resend text
            Align(
              alignment: Alignment.center,
              child: Text(
                'Resend in 60 seconds',
                style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor),
              ),
            ),
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
