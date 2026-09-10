import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/theme/widget/text_theme_screen_util.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

///-----------------------------[without Screen Util ]-------------------------------
/*
class Menu extends StatelessWidget {
  const Menu({super.key, required this.imageName, required this.title, required this.subtitle});
  final String imageName, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 36,
                height: 36,
                child: Center(child: SvgPicture.asset(imageName, width: 24, height: 30, fit: BoxFit.contain)),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: MTextTheme.semiBold.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Text(subtitle, maxLines: 1, overflow: TextOverflow.ellipsis, style: MTextTheme.labelMedium),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/

///-----------------------------[with Screen Util ]-------------------------------

class Menu extends StatelessWidget {
  const Menu({super.key, required this.imageName, required this.title, required this.subtitle});
  final String imageName, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 36.w,
              height: 36.h,
              child: Center(
                child: SvgPicture.asset(imageName, width: 24.w, height: 30.h, fit: BoxFit.contain),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: MTextTheme.semiBold.copyWith(fontSize: 16.sp),
                  ),
                  SizedBox(height: 4.h),
                  Text(subtitle, maxLines: 1, overflow: TextOverflow.ellipsis, style: MTextTheme.labelMedium),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
