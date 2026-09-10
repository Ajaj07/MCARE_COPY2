import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

class MTheme {
  MTheme._();
  static ThemeData theme1 = ThemeData(
    useMaterial3: true,
    fontFamily: 'Khula',
    primaryColor: MColors.primaryColor,
    scaffoldBackgroundColor: MColors.whiteColor,
  );
}
