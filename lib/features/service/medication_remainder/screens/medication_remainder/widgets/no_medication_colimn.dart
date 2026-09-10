import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

import '../../../../../../utils/theme/widget/text_theme_screen_util.dart';

///-------------------[Without Screen Util]-------------------------

/*
class NoMedicationColumn extends StatelessWidget {
  const NoMedicationColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            //svg image
            SvgPicture.asset(
              'assets/images/medication_ramainder/empty_medication.svg',
              width: 160,
              height: 160,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 10),
            // label main heading
            Text('No medication scheduled for today', style: MTextTheme.semiBold),
            SizedBox(height: 10),
            //sub heading
            Text(
              'Click add medicine below to add a schedule',
              style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
*/

///-------------------[Wit Screen Util]-------------------------
class NoMedicationColumn extends StatelessWidget {
  const NoMedicationColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          //svg image
          SvgPicture.asset(
            'assets/images/medication_ramainder/empty_medication.svg',
            width: 160.w,
            height: 160.h,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 10.h),
          // label main heading
          Text('No medication scheduled for today', style: MTextTheme.semiBold),
          SizedBox(height: 10.h),
          //sub heading
          Text(
            'Click add medicine below to add a schedule',
            style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor),
          ),
        ],
      ),
    );
  }
}
