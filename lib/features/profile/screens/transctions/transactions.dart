import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme_screen_util.dart';

import '../../../../utils/constants/colors.dart';

/// ---------------------[Direct Screen Util]----------------------------
class Transactions extends StatelessWidget {
  const Transactions({super.key});

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
          icon: Image.asset(
            'assets/icons/back_arrow.png',
            width: 24.w, // Made back arrow width responsive
            height: 24.h, // Made back arrow height responsive
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          'TransActions History',
          style: MTextTheme.semiBold.copyWith(fontSize: 16.sp), // Made text size responsive using .sp
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 26.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TransActionTile(),
              SizedBox(height: 10.h),
              TransActionTile(),
              SizedBox(height: 10.h),
              TransActionTile(),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}

class TransActionTile extends StatelessWidget {
  const TransActionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0XFF090909), borderRadius: BorderRadius.circular(6.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // date Container
          Container(
            width: 43.w,
            height: 50.h,
            alignment: Alignment(0, 0),
            decoration: BoxDecoration(color: Colors.white, boxShadow: []),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text('13', style: MTextTheme.bold.copyWith(color: MColors.textThirtyColor)),
                ),
                SizedBox(height: 7.5.h),
                Flexible(
                  child: Text('May', style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),
                ),
              ],
            ),
          ),
          SizedBox(width: 10.w),
          // Transaction Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('GP Consultation with Dr. Emily Smith', style: MTextTheme.semiBold.copyWith(color: Colors.white)),
              SizedBox(height: 10.h),
              Text('\$20,00', style: MTextTheme.labelMedium.copyWith(color: MColors.primaryColor)),
            ],
          ),
          SizedBox(width: 10.w),
          //paid button
          Container(
            alignment: Alignment(0, 0),
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
            decoration: BoxDecoration(color: MColors.thirtyColor, borderRadius: BorderRadius.circular(4.r)),
            child: Text(
              'Paid',
              style: MTextTheme.regular.copyWith(fontSize: 10.sp, color: MColors.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
