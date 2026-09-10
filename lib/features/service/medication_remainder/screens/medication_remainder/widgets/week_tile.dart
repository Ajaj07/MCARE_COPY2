import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/theme/widget/text_theme_screen_util.dart';

///-------------------[Without Screen Util]-------------------------

/*
class Weektile extends StatelessWidget {
  const Weektile({super.key, required this.dayName, required this.date});
  final String dayName;
  final int date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 1, color: Color(0XFFE3E3E3)),
      ),
      child: Text('$dayName\n$date', textAlign: TextAlign.center, style: MTextTheme.labelMedium.copyWith(height: 1.5)),
    );
  }
}
*/

///-------------------[Wit Screen Util]-------------------------
class Weektile extends StatelessWidget {
  const Weektile({super.key, required this.dayName, required this.date});
  final String dayName;
  final int date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 60.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(width: 1.w, color: Color(0XFFE3E3E3)),
      ),
      child: Text('$dayName\n$date', textAlign: TextAlign.center, style: MTextTheme.labelMedium.copyWith(height: 1.5)),
    );
  }
}
