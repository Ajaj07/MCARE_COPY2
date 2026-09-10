import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/theme/widget/text_theme.dart';

class HourTile extends StatelessWidget {
  const HourTile({super.key, required this.time});

  final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 79.w,
      height: 37.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(width: 1.w, color: Color(0XFFE3E3E3)),
      ),
      child: Text(
        time,
        style: MTextTheme.regular.copyWith(fontSize: 14.sp, color: MColors.textSecondaryColor),
      ),
    );
  }
}
