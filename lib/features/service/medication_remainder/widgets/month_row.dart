import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/theme/widget/text_theme_screen_util.dart';

///-------------------[Without Screen Util]-------------------------
/*
class MonthRow extends StatelessWidget {
  const MonthRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //backward arrow
        SvgPicture.asset(
          'assets/icons/svg/arrow_back.svg',
          width: 16,
          height: 16,
          colorFilter: const ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
        ),
        // Month
        Text('February', style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
        //forward arrow
        SvgPicture.asset(
          'assets/icons/svg/arrow_forward.svg',
          width: 16,
          height: 16,
          colorFilter: const ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
        ),
      ],
    );
  }
}
*/
///-------------------[Wit Screen Util]-------------------------
class MonthRow extends StatelessWidget {
  const MonthRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //backward arrow
        SvgPicture.asset(
          'assets/icons/svg/arrow_back.svg',
          width: 16.w,
          height: 16.h,
          colorFilter: const ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
        ),
        // Month
        Text('February', style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
        //forward arrow
        SvgPicture.asset(
          'assets/icons/svg/arrow_forward.svg',
          width: 16.w,
          height: 16.h,
          colorFilter: const ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
        ),
      ],
    );
  }
}
