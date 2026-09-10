import 'package:flutter/material.dart';
import 'package:mcare_copy2/features/history/widgets/visited_card.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

/// without screen util
/*
class Upcomming extends StatelessWidget {
  const Upcomming({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '1 Minggu yang akan datang',
            style: MTextTheme.semiBold.copyWith(
              color: MColors.textSecondaryColor,
            ),
          ),
          SizedBox(height: 5),
          VisitedCard(),
          SizedBox(height: 5),
          VisitedCard(),
        ],
      ),
    );
  }
}
*/

/// with screen util

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Upcomming extends StatelessWidget {
  const Upcomming({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '1 Minggu yang akan datang',
            style: MTextTheme.semiBold.copyWith(
              color: MColors.textSecondaryColor,
            ),
          ),
          SizedBox(height: 5.h),
          VisitedCard(),
          SizedBox(height: 5.h),
          VisitedCard(),
        ],
      ),
    );
  }
}
