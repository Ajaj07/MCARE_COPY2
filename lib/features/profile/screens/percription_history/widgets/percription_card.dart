import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme_screen_util.dart';

import '../../../../../utils/constants/colors.dart';

///-----------------------[without Screen_util]----------------------
/*
class PercriptionCard extends StatelessWidget {
  const PercriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: Color(0XFFE3E3E3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Doctor's Name
          Container(
            width: double.infinity,
            color: MColors.primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Doctor \'s Name:', style: MTextTheme.labelMedium.copyWith(color: Colors.white)),
                Text(' Dr. Emily Smith, MD', style: MTextTheme.semiBold.copyWith(color: Colors.white)),
              ],
            ),
          ),
          SizedBox(height: 20),
          //Medicine Row
          Padding(
            padding: EdgeInsets.only(left: 24, right: 15, bottom: 20),
            child: medecineInfo(
              title: 'Paracetamol 500 mg',
              subTitle: 'Take 1 tablet every 6 hours as needed to reduce fever or pain.',
            ),
          ),
          // Doted lines
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0), // much less than 24
            child: MedicineDivider(),
          ),

          SizedBox(height: 20),
          // 2'nd Row
          Padding(
            padding: EdgeInsets.only(left: 24, right: 15),
            child: medecineInfo(
              title: 'Amoxicillin 500 mg',
              subTitle: 'Take 1 tablet every 8 hours for 7 days to treat bacterial infection',
            ),
          ),
          SizedBox(height: 20),
          // doted Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0), // much less than 24
            child: MedicineDivider(),
          ),
          // 3'rd Row
          Padding(
            padding: EdgeInsets.only(left: 24, right: 15),
            child: medecineInfo(
              title: 'Omeprazole 20 mg',
              subTitle: 'Take 1 tablet every morning before eating to reduce stomach acid production.',
            ),
          ),
          SizedBox(height: 20),

          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              color: MColors.textThirtyColor,
              // borderRadius: BorderRadius.circular(radius)
            ),
            child: Text(
              '12 June 2024 - 20 June 2024',
              style: MTextTheme.regular.copyWith(fontSize: 10, color: MColors.textSecondaryColor),
            ),
          ),
        ],
      ),
    );
  }

  Column medecineInfo({required String title, required String subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: MTextTheme.regular.copyWith(fontWeight: FontWeight.w600)),
        SizedBox(height: 10),
        Text(subTitle, style: MTextTheme.labelMedium),
      ],
    );
  }
}

class MedicineDivider extends StatelessWidget {
  final Color color;
  const MedicineDivider({super.key, this.color = const Color(0XFFE3E3E3)});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left cap — flat outer edge, rounded inner edge
        Container(
          height: 10,
          width: 5,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(topRight: Radius.circular(100), bottomRight: Radius.circular(100)),
          ),
        ),
        Expanded(
          child: DottedLine(
            direction: Axis.horizontal,
            lineLength: double.infinity,
            lineThickness: 1.0,
            dashLength: 5.0,
            dashColor: Colors.grey.shade400,
            dashGapLength: 3.0,
          ),
        ),
        // Right cap — flat outer edge, rounded inner edge
        Container(
          height: 10,
          width: 5,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(100), bottomLeft: Radius.circular(100)),
          ),
        ),
      ],
    );
  }
}
*/

///-----------------------[with Screen_util]----------------------
class PercriptionCard extends StatelessWidget {
  const PercriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1.w, color: Color(0XFFE3E3E3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Doctor's Name
          Container(
            width: double.infinity,
            color: MColors.primaryColor,
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Doctor \'s Name:', style: MTextTheme.labelMedium.copyWith(color: Colors.white)),
                Text(' Dr. Emily Smith, MD', style: MTextTheme.semiBold.copyWith(color: Colors.white)),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          //Medicine Row
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 15.w, bottom: 20.h),
            child: medecineInfo(
              title: 'Paracetamol 500 mg',
              subTitle: 'Take 1 tablet every 6 hours as needed to reduce fever or pain.',
            ),
          ),
          // Doted lines
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0), // much less than 24
            child: MedicineDivider(),
          ),

          SizedBox(height: 20.h),
          // 2'nd Row
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 15.w),
            child: medecineInfo(
              title: 'Amoxicillin 500 mg',
              subTitle: 'Take 1 tablet every 8 hours for 7 days to treat bacterial infection',
            ),
          ),
          SizedBox(height: 20.h),
          // doted Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0), // much less than 24
            child: MedicineDivider(),
          ),
          // 3'rd Row
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 15.w),
            child: medecineInfo(
              title: 'Omeprazole 20 mg',
              subTitle: 'Take 1 tablet every morning before eating to reduce stomach acid production.',
            ),
          ),
          SizedBox(height: 20.h),

          Container(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              color: MColors.textThirtyColor,
              // borderRadius: BorderRadius.circular(radius)
            ),
            child: Text(
              '12 June 2024 - 20 June 2024',
              style: MTextTheme.regular.copyWith(fontSize: 10.sp, color: MColors.textSecondaryColor),
            ),
          ),
        ],
      ),
    );
  }

  Column medecineInfo({required String title, required String subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: MTextTheme.regular.copyWith(fontWeight: FontWeight.w600)),
        SizedBox(height: 10.h),
        Text(subTitle, style: MTextTheme.labelMedium),
      ],
    );
  }
}

class MedicineDivider extends StatelessWidget {
  final Color color;
  const MedicineDivider({super.key, this.color = const Color(0XFFE3E3E3)});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left cap — flat outer edge, rounded inner edge
        Container(
          height: 10.h,
          width: 5.w,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(topRight: Radius.circular(100.r), bottomRight: Radius.circular(100.r)),
          ),
        ),
        Expanded(
          child: DottedLine(
            direction: Axis.horizontal,
            lineLength: double.infinity,
            lineThickness: 1.0,
            dashLength: 5.0,
            dashColor: Colors.grey.shade400,
            dashGapLength: 3.0,
          ),
        ),
        // Right cap — flat outer edge, rounded inner edge
        Container(
          height: 10.h,
          width: 5.w,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(100.r), bottomLeft: Radius.circular(100.r)),
          ),
        ),
      ],
    );
  }
}
