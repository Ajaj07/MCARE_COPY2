import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/common/widgets/Buttons/secondary_button.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/theme/widget/text_theme_screen_util.dart';

///-----------------------------[Without Screen Util]------------------------
/*
  class MedicineCard extends StatelessWidget {

  const MedicineCard({super.key, required this.imageName, required this.medicineName, required this.price});
  final String imageName, medicineName, price;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178,
      // height: 248,
      padding: EdgeInsets.only(left: 12, right: 12, top: 3, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0XFFE3E3E3), width: 1),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4), // Pushes the shadow straight down
            color: Colors.black.withOpacity(0.04), // Very light, soft shadow
            blurRadius: 10, // Blurs the shadow so it doesn't look like a solid line
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // medicine image
          Container(
            width: 155,
            height: 123,
            alignment: Alignment.center,
            color: Colors.white,
            child: Image.asset(imageName, fit: BoxFit.contain),
          ),
          SizedBox(height: 10),
          // name of medicine
          Text(
            medicineName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: MTextTheme.semiBold.copyWith(fontSize: 14),
          ),
          SizedBox(height: 2),
          Text('Per Strip', style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),
          Spacer(),
          //button row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 5.0,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2.0,
                children: [
                  Text(
                    'Start from ',
                    style: MTextTheme.bodyMedium.copyWith(fontSize: 10, color: MColors.textThirtyColor),
                  ),
                  Text(price, style: MTextTheme.bold),
                ],
              ),

              Expanded(
                child: MSButton2(
                  label: 'add',
                  buttonStyle: ButtonStyle(side: WidgetStatePropertyAll(BorderSide(color: MColors.primaryColor))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/

class MedicineCard extends StatelessWidget {
  const MedicineCard({super.key, required this.imageName, required this.medicineName, required this.price});
  final String imageName, medicineName, price;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178.w,
      height: 248.h,
      padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 3.h, bottom: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0XFFE3E3E3), width: 1),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4), // Pushes the shadow straight down
            color: Colors.black.withOpacity(0.04), // Very light, soft shadow
            blurRadius: 10, // Blurs the shadow so it doesn't look like a solid line
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // medicine image
          Container(
            width: 155.w,
            height: 123.h,
            alignment: Alignment.center,
            color: Colors.white,
            child: Image.asset(imageName, fit: BoxFit.contain),
          ),
          SizedBox(height: 10.h),
          // name of medicine
          Text(
            medicineName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: MTextTheme.semiBold.copyWith(fontSize: 14.sp),
          ),
          SizedBox(height: 2.h),
          Text('Per Strip', style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),
          Spacer(),
          //button row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 5.0.w,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2.0.h,
                children: [
                  Text(
                    'Start from ',
                    style: MTextTheme.bodyMedium.copyWith(fontSize: 10.sp, color: MColors.textThirtyColor),
                  ),
                  Text(price, style: MTextTheme.bold),
                ],
              ),

              Expanded(
                child: MSButton2(
                  label: 'add',
                  buttonStyle: ButtonStyle(side: WidgetStatePropertyAll(BorderSide(color: MColors.primaryColor))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
