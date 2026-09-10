import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/theme/widget/text_theme_screen_util.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

///-----------------------------[without Screen Util ]-------------------------------

/// A single reusable menu item row: icon + label, with an optional
/// trailing widget (e.g. a switch) for rows like "Dark Mode".
/*
class SettingsMenuItem extends StatelessWidget {
  const SettingsMenuItem({
    super.key,
    required this.iconPath,
    required this.label,
    this.trailing, // null for normal rows, a widget (e.g. switch) for special rows
  });

  final String iconPath;
  final String label;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Icon container (fixed size box so all icons align identically)
        SizedBox(
          width: 36,
          height: 36,
          child: Center(child: SvgPicture.asset(iconPath, width: 24, height: 30, fit: BoxFit.contain)),
        ),
        SizedBox(width: 10),

        // Label text
        Text(label, style: MTextTheme.semiBold.copyWith(fontSize: 16)),

        // Only add Spacer + trailing widget if one was actually passed in
        if (trailing != null) ...[Spacer(), trailing!],
      ],
    );
  }
}
*/

///-----------------------------[with  Screen Util ]-------------------------------

class SettingsMenuItem extends StatelessWidget {
  const SettingsMenuItem({
    super.key,
    required this.iconPath,
    required this.label,
    this.trailing, // null for normal rows, a widget (e.g. switch) for special rows
  });

  final String iconPath;
  final String label;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Icon container (fixed size box so all icons align identically)
        SizedBox(
          width: 36.w,
          height: 36.h,
          child: Center(
            child: SvgPicture.asset(iconPath, width: 24.w, height: 30.h, fit: BoxFit.contain),
          ),
        ),
        SizedBox(width: 10.w),

        // Label text
        Text(label, style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),

        // Only add Spacer + trailing widget if one was actually passed in
        if (trailing != null) ...[Spacer(), trailing!],
      ],
    );
  }
}
