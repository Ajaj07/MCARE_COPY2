import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../../common/widgets/Buttons/primary_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/theme/widget/text_theme_screen_util.dart';
import '../../widgets/month_row.dart';
import 'widgets/no_medication_colimn.dart';
import 'widgets/week_scrolled_card.dart';

///-------------------[Without Screen Util]-------------------------

/*
class MedicationRemainderEmpty extends StatelessWidget {
  const MedicationRemainderEmpty({super.key});

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
          icon: Image.asset('assets/icons/back_arrow.png', width: 24, height: 24, fit: BoxFit.cover),
        ),
        title: Text('Medication Reminder', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
        actions: const [SizedBox(width: 48)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///----------------------[Month-Row]------------------------------
          Padding(padding: const EdgeInsets.symmetric(horizontal: 30), child: MonthRow()),
          SizedBox(height: 10),

          ///----------------------[week card]------------------------------
          WeekScrollCard(),
          SizedBox(height: 30),

          ///----------------------[current Date]------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Today, 20 February 2024', style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
            ],
          ),

          ///----------------------[No Medication Schedule for today]------------------------------
          Spacer(),
          NoMedicationColumn(),
          Spacer(),

          ///----------------------[Add Medicine]------------------------------
          SizedBox(
            width: double.infinity,

            child: Padding(
              padding: EdgeInsets.only(left: 26, right: 26, bottom: 40),
              child: const MPButton2(label: 'Add Medicine'),
            ),
          ),
        ],
      ),
    );
  }
}
*/

///-------------------[Wit Screen Util]-------------------------
class MedicationRemainderEmpty extends StatelessWidget {
  const MedicationRemainderEmpty({super.key});

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

          ///----------------------[No Medication Schedule for today]------------------------------
          Spacer(),
          NoMedicationColumn(),
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
