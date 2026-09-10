import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/common/widgets/Buttons/primary_button.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/theme/widget/text_theme_screen_util.dart';
import '../../widgets/month_row.dart';
import 'widgets/week_scrolled_card.dart';

///-------------------[Direct With Screen Util]-------------------------

class MedicationRemainderFill extends StatelessWidget {
  const MedicationRemainderFill({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/back_arrow.png', width: 24.w, height: 24.h, fit: BoxFit.cover),
        ),
        title: Text('Medication Reminder', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
        actions: [SizedBox(width: 48.w)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///----------------------[Month-Row]------------------------------
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: MonthRow(),
          ),
          SizedBox(height: 10.h),

          ///----------------------[week card]------------------------------
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: WeekScrollCard(),
          ),
          SizedBox(height: 30.h),

          ///----------------------[current Date]------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Today, 20 February 2024', style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
            ],
          ),

          ///----------------------[ Selected  Medicine ]------------------------------
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 26.h),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Color(0XFFE3E3E3), width: 1),
              ),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //capsul icon
                  Container(
                    width: 36.w,
                    height: 36.h,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: MColors.thirtyColor),
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/icons/svg/capsul.svg', fit: BoxFit.fill, width: 20.r, height: 20.r),
                  ),
                  SizedBox(width: 12.w),
                  // Medicine Details column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Paracetamol 500 mg', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
                      Text('2.0 Caplets After Meal', style: MTextTheme.labelMedium),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),

          ///----------------------[Add Medicine]------------------------------
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 26.w, right: 26.w, bottom: 40.h),
              child: const MPButton2(label: 'Add Medicine'),
            ),
          ),
        ],
      ),
    );
  }
}
