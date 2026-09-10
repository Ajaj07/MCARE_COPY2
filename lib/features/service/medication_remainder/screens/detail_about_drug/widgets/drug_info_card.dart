import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/theme/widget/text_theme_screen_util.dart';

///---------------[Without screen Util]---------------------------
/*
class DrugInfoCard extends StatelessWidget {
  const DrugInfoCard({super.key, required this.title, required this.subTitle});
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: MColors.thirtyColor,
        border: Border.all(color: Color(0XFFE3E3E3), width: 1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Text(title, style: MTextTheme.semiBold.copyWith(fontSize: 16)),
          SizedBox(height: 10),
          Text(subTitle, style: MTextTheme.labelMedium),
        ],
      ),
    );
  }
}
*/

///---------------[With screen Util]---------------------------

import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrugInfoCard extends StatelessWidget {
  const DrugInfoCard({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: MColors.thirtyColor,
        border: Border.all(color: const Color(0xFFE3E3E3), width: 1.w),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
          SizedBox(height: 10.h),
          Text(subTitle, style: MTextTheme.labelMedium, textAlign: TextAlign.start),
        ],
      ),
    );
  }
}
