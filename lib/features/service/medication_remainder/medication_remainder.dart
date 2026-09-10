import 'package:flutter/material.dart';

import 'package:mcare_copy2/utils/constants/colors.dart';
import '../../../utils/theme/widget/text_theme_screen_util.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';
import '../../../common/widgets/Buttons/primary_button.dart';
import 'widgets/medication_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///---------------[Without screen Util]---------------------------
/*
class MedicationRemainder extends StatelessWidget {
  const MedicationRemainder({super.key});

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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(), // try 30
            ///----------------[Heading row]-------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reminder to Take Medicine',
                  style: MTextTheme.semiBold.copyWith(fontSize: 16, color: MColors.textSecondaryColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 3,
                  children: [
                    Text('Lihat Semua', style: MTextTheme.regular.copyWith(fontSize: 14, color: MColors.primaryColor)),
                    Icon(Icons.arrow_forward_ios_sharp, color: MColors.textSecondaryColor, size: 10),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10), // try 30
            ///-----------------[Manage Your medication]-------------------
            MedicationCard(
              title: 'Manage your medication',
              subTitle: 'Add the medicine you are taking and create a reminder to take the medicine',
            ),
            SizedBox(height: 15),
            Text(
              'History of Taking Medication',
              style: MTextTheme.semiBold.copyWith(fontSize: 16, color: MColors.textSecondaryColor),
            ),
            SizedBox(height: 15),

            MedicationCard(
              title: 'View all medication history',
              subTitle: 'Add the medicine you are taking and create a reminder to take the medicine',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 40, left: 26, right: 26),
        child: MPButton2(label: 'Add Medicine'),
      ),
    );
  }
}
*/

///---------------[With screen Util]---------------------------

class MedicationRemainder extends StatelessWidget {
  const MedicationRemainder({super.key});

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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),

            ///----------------[Heading row]-------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Reminder to Take Medicine',
                    style: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: MColors.textSecondaryColor),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 3.w),
                    Text(
                      'Lihat Semua',
                      style: MTextTheme.regular.copyWith(fontSize: 14.sp, color: MColors.primaryColor),
                    ),
                    SizedBox(width: 3.w),
                    Icon(Icons.arrow_forward_ios_sharp, color: MColors.textSecondaryColor, size: 10.sp),
                  ],
                ),
              ],
            ),

            SizedBox(height: 10.h),

            ///-----------------[Manage Your medication]-------------------
            const MedicationCard(
              title: 'Manage your medication',
              subTitle: 'Add the medicine you are taking and create a reminder to take the medicine',
            ),

            SizedBox(height: 15.h),

            Text(
              'History of Taking Medication',
              style: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: MColors.textSecondaryColor),
            ),

            SizedBox(height: 15.h),

            const MedicationCard(
              title: 'View all medication history',
              subTitle: 'Add the medicine you are taking and create a reminder to take the medicine',
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 26.w, right: 26.w, bottom: 40.h),
          child: const MPButton2(label: 'Add Medicine'),
        ),
      ),
    );
  }
}
