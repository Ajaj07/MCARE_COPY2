import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/theme/widget/text_theme_screen_util.dart';

///---------------[Without screen Util]---------------------------
/*
class MedicationCard extends StatelessWidget {
  const MedicationCard({
    super.key,
    required this.title,
    required this.subTitle,
    this.imagePath = 'assets/images/medication_ramainder/Layer_2.svg',
  });
  final String title, subTitle, imagePath;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        radius: const Radius.circular(12),
        color: MColors.thirtyColor,
        strokeWidth: 1,
        dashPattern: const [15, 15], // 6px line, 3px gap
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagePath.trim(),
              width: 132.8,
              height: 100,
              // colorFilter: const ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
            ),
            SizedBox(height: 12),
            Text(title, style: MTextTheme.semiBold),
            SizedBox(height: 5),
            Text(
              subTitle,
              textAlign: TextAlign.center,
              style: MTextTheme.labelMedium.copyWith(fontSize: 12, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
*/

///---------------[Without screen Util]---------------------------
class MedicationCard extends StatelessWidget {
  const MedicationCard({
    super.key,
    required this.title,
    required this.subTitle,
    this.imagePath = 'assets/images/medication_ramainder/Layer_2.svg',
  });

  final String title;
  final String subTitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        radius: Radius.circular(12.r),
        color: MColors.thirtyColor,
        strokeWidth: 1.w,
        dashPattern: [15.w, 15.w],
      ),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
        child: Column(
          children: [
            SvgPicture.asset(imagePath.trim(), width: 132.8.w, height: 100.h),

            SizedBox(height: 12.h),

            Text(title, textAlign: TextAlign.center, style: MTextTheme.semiBold),

            SizedBox(height: 5.h),

            Text(
              subTitle,
              textAlign: TextAlign.center,
              style: MTextTheme.labelMedium.copyWith(fontSize: 12.sp, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
