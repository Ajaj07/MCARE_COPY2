import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

///-----------------------[Without Screen Util]----------------------
/*
class EmailContainer extends StatelessWidget {
  const EmailContainer({super.key});

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
            'Email',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MColors.primaryColor),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: MColors.secondaryColor, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 14, bottom: 17.5),
              child: TextFormField(
                decoration: const InputDecoration(
                  // labelText: "Full Name",
                  hint: Text(
                    'Enter Your email',
                    style: TextStyle(
                      fontFamily: 'Khula',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: MColors.textThirtyColor,
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/

///-----------------------[With Screen Util]----------------------

class EmailContainer extends StatelessWidget {
  const EmailContainer({super.key});

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
            'Email',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: MColors.primaryColor),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.infinity,
            height: 44.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(
                color: MColors.secondaryColor,
                width: 1.w, // Applied .w here
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 14.w, bottom: 17.5.h),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Your email', // Switched to hintText
                  hintStyle: TextStyle(
                    fontFamily: 'Khula',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: MColors.textThirtyColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
