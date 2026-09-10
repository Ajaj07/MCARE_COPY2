import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

///-------------------------[Without Screen Util]------------------
/*
class PhoneContainer extends StatelessWidget {
  const PhoneContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'No Phone*',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MColors.primaryColor),
          ),
          const SizedBox(height: 12),
          Container(
            height: 44,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: MColors.secondaryColor, width: 1),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center, // ✅ center vertically
              children: [
                // Country picker section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Pilih',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: MColors.textThirtyColor),
                      ),
                      const Icon(Icons.arrow_drop_down, size: 20),
                    ],
                  ),
                ),

                // Divider
                Container(width: 1, height: 24, color: MColors.secondaryColor),

                // Phone number input
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      hintText: 'Enter phone number',
                      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: MColors.textThirtyColor),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/

import 'package:flutter_screenutil/flutter_screenutil.dart';

///-------------------------[With Screen Util]---------------------
class PhoneContainer extends StatelessWidget {
  const PhoneContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88.h,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'No Phone*',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: MColors.primaryColor),
          ),
          SizedBox(height: 12.h),
          Container(
            height: 44.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(color: MColors.secondaryColor, width: 1.w),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center, // ✅ center vertically
              children: [
                // Country picker section
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Pilih',
                        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, color: MColors.textThirtyColor),
                      ),
                      Icon(Icons.arrow_drop_down, size: 20.sp),
                    ],
                  ),
                ),

                // Divider
                Container(width: 1.w, height: 24.h, color: MColors.secondaryColor),

                // Phone number input
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(fontSize: 14.sp),
                    decoration: InputDecoration(
                      hintText: 'Enter phone number',
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: MColors.textThirtyColor,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
