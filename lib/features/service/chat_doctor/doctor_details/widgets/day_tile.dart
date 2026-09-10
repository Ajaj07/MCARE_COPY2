import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/theme/widget/text_theme.dart';

class DayTile extends StatelessWidget {
  const DayTile({super.key, required this.days, required this.day});
  final String days;
  final int day;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 58.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 1, color: const Color(0xFFE3E3E3)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            days.toString(),
            style: MTextTheme.labelMedium.copyWith(
              // fontFamily: 'Khula', fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              height: 1.0,
              letterSpacing: 0.14,
            ),
          ),
          SizedBox(height: 2.h), // tweak until it visually matches Figma
          Text(
            day.toString(),
            style: MTextTheme.labelMedium.copyWith(
              // fontFamily: 'Khula', fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              height: 1.0,
              letterSpacing: 0.14,
            ),
          ),
        ],
      ),
    );
  }
}
