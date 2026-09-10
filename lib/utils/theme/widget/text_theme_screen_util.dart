import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

class MTextTheme {
  MTextTheme._();

  static TextStyle get regular =>
      TextStyle(fontFamily: 'Khula', fontSize: 16.sp, fontWeight: FontWeight.w400, color: const Color(0XFF090909));

  static TextStyle get semiBold =>
      TextStyle(fontFamily: 'Khula', fontSize: 14.sp, fontWeight: FontWeight.w600, color: const Color(0XFF090909));

  static TextStyle get bold =>
      TextStyle(fontFamily: 'Khula', fontSize: 16.sp, fontWeight: FontWeight.w700, color: MColors.primaryColor);

  static TextStyle get headlineSmall =>
      TextStyle(fontFamily: 'Khula', fontSize: 20.sp, fontWeight: FontWeight.w400, color: const Color(0XFF090909));

  static TextStyle get headlineMedium =>
      TextStyle(fontFamily: 'Khula', fontSize: 20.sp, fontWeight: FontWeight.w600, color: const Color(0XFF090909));

  static TextStyle get labelMedium =>
      TextStyle(fontFamily: 'Khula', fontSize: 14.sp, fontWeight: FontWeight.w400, color: MColors.textSecondaryColor);

  static TextStyle get labelLarge =>
      TextStyle(fontFamily: 'Khula', fontSize: 10.sp, fontWeight: FontWeight.w700, color: MColors.whiteColor);

  static TextStyle get bodyMedium =>
      TextStyle(fontFamily: 'Khula', fontSize: 12.sp, fontWeight: FontWeight.w400, color: MColors.whiteColor);

  static TextStyle get bodySmall =>
      TextStyle(fontFamily: 'Khula', fontSize: 10.sp, fontWeight: FontWeight.w400, color: MColors.whiteColor);

  static TextStyle get bodyLarge =>
      TextStyle(fontFamily: 'Khula', fontSize: 14.sp, fontWeight: FontWeight.w600, color: MColors.primaryColor);
}
