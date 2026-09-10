import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/common/widgets/Buttons/primary_button.dart';

import '../../../utils/constants/colors.dart';
import '../../home/screens/home.dart';

class VerificationSuccess extends StatelessWidget {
  const VerificationSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 28.w,
          right: 28.w,
          top: 320.h,
          bottom: 70.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// icon
            Image.asset('assets/icons/solid_success.png'),
            SizedBox(height: 60.h),

            /// verification Text
            Text(
              'Verification success',
              style: TextStyle(
                fontFamily: 'Khula',
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: MColors.base1Color,
              ),
            ),
            SizedBox(height: 14.h),

            /// greeting message
            Text(
              'Congratulations, your account has been verified',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Khula',
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: MColors.textSecondaryColor,
              ),
            ),
            SizedBox(height: 173.h),

            /// Continue Button
            Flexible(
              child: MPButton(
                label: 'Continue',
                pressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
