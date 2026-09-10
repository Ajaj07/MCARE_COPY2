import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/theme/widget/text_theme.dart';

class EduAndLicRow extends StatelessWidget {
  const EduAndLicRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 61.h,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: const Color(0XFFFFFFFF),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: const Color(0XFFE3E3E3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      'Education',
                      style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor, fontSize: 12.sp),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Flexible(
                    child: Text(
                      'University of Milan',
                      style: MTextTheme.semiBold.copyWith(
                        color: MColors.primaryColor,
                        // fontSize: 16.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 22.w),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: const Color(0XFFFFFFFF),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: const Color(0XFFE3E3E3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text('License', style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
                  ),
                  SizedBox(height: 6.h),
                  Flexible(
                    child: Text('1276126552881', style: MTextTheme.semiBold.copyWith(color: MColors.primaryColor)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
