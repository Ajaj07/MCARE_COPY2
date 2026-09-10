import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
// import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MTextTheme {
  MTextTheme._();

  static TextStyle regular = TextStyle(
    fontFamily: 'Khula',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0XFF090909),
  );

  static TextStyle semiBold = TextStyle(
    fontFamily: 'Khula',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0XFF090909),
  );

  // Bold
  static TextStyle bold = TextStyle(
    fontFamily: 'Khula',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: MColors.primaryColor,
  );

  /// regular to semi

  static TextStyle headlineSmall = TextStyle(
    fontFamily: 'Khula',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Color(0XFF090909),
  );

  ///semibold
  static TextStyle headlineMedium = TextStyle(
    fontSize: 20,
    fontFamily: 'Khula',
    fontWeight: FontWeight.w600,
    color: Color(0XFF090909),
  );

  /// label Medium
  static TextStyle labelMedium = TextStyle(
    fontSize: 14,
    fontFamily: 'Khula',
    fontWeight: FontWeight.w400,
    color: MColors.textSecondaryColor,
  );

  /// label large
  static TextStyle labelLarge = TextStyle(
    fontSize: 10,
    fontFamily: 'Khula',
    fontWeight: FontWeight.w700,
    color: MColors.whiteColor,
  );

  /// body normal
  static TextStyle bodyMedium = TextStyle(
    fontSize: 12,
    fontFamily: 'Khula',
    fontWeight: FontWeight.w400,
    color: MColors.whiteColor,
  );

  static TextStyle bodySmall = TextStyle(
    fontSize: 10.sp,
    fontFamily: 'Khula',
    fontWeight: FontWeight.w400,
    color: MColors.whiteColor,
  );

  static TextStyle bodyLarge = TextStyle(
    fontSize: 14,
    fontFamily: 'Khula',
    fontWeight: FontWeight.w600,
    color: MColors.primaryColor,
  );
}
