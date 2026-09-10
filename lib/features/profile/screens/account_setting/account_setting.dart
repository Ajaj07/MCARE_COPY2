import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

import '../../../../utils/theme/widget/text_theme_screen_util.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

///-------------------[Directly Screen_Util Implementation]--------------------
///
class AccountSetting extends StatelessWidget {
  AccountSetting({super.key});
  OutlineInputBorder commonBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.r),
    borderSide: BorderSide(color: MColors.secondaryColor, width: 1),
  );
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
          style: MTextTheme.semiBold.copyWith(fontSize: 16), // Made text size responsive using .sp
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Text('Password', style: MTextTheme.bold.copyWith(fontWeight: FontWeight.w600)),
            SizedBox(height: 10.h),
            TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: "Enter your Password",
                hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
                contentPadding: EdgeInsets.symmetric(horizontal: 14),
                border: commonBorder,
                enabledBorder: commonBorder,
                disabledBorder: commonBorder,
              ),
            ),
            SizedBox(height: 20.h),
            Text('Language', style: MTextTheme.bold.copyWith(fontWeight: FontWeight.w600)),
            // for Language
            Container(
              width: double.infinity,
              height: 44.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(color: MColors.secondaryColor, width: 1.w),
              ),
              child: Center(
                // <-- centers vertically inside the fixed-height Container
                child: DropdownButtonFormField<String>(
                  value: null,
                  isDense: true,
                  isExpanded: true,
                  alignment: AlignmentDirectional.centerStart,
                  hint: Text(
                    'Choose your Language',
                    style: TextStyle(
                      fontFamily: 'Khula',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: MColors.textThirtyColor,
                    ),
                  ),
                  icon: Icon(Icons.keyboard_arrow_down, size: 20.sp),
                  decoration: InputDecoration(
                    isCollapsed: true, // <-- key change: removes reserved padding space
                    contentPadding: EdgeInsets.symmetric(horizontal: 14.w),
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  items: [
                    DropdownMenuItem(
                      value: 'English',
                      child: Text('English', style: MTextTheme.semiBold),
                    ),
                    DropdownMenuItem(
                      value: 'Hindi',
                      child: Text('Hindi', style: MTextTheme.semiBold),
                    ),
                    DropdownMenuItem(
                      value: 'Gujrati',
                      child: Text('Gujrati', style: MTextTheme.semiBold),
                    ),
                  ],
                  onChanged: (value) {
                    // handle selection
                  },
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text('Privacy Settings', style: MTextTheme.bold.copyWith(fontWeight: FontWeight.w600)),
            SizedBox(height: 10.h),
            // Privacy Setting Dropdown
            Container(
              width: double.infinity,
              height: 44.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(color: MColors.secondaryColor, width: 1.w),
              ),
              child: Center(
                child: DropdownButtonFormField<String>(
                  value: null,
                  hint: Text(
                    'Choose  Security Policy',
                    style: TextStyle(
                      fontFamily: 'Khula',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: MColors.textThirtyColor,
                    ),
                  ),
                  icon: Icon(Icons.keyboard_arrow_down, size: 20.sp),
                  decoration: InputDecoration(
                    isCollapsed: true, // <-- key change: removes reserved padding space
                    contentPadding: EdgeInsets.symmetric(horizontal: 14.w),

                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  items: [
                    DropdownMenuItem(
                      value: 'Information Privacy',
                      child: Text('Information Privacy', style: MTextTheme.semiBold),
                    ),
                    DropdownMenuItem(
                      value: 'Information Privacy2',
                      child: Text('Information Privacy', style: MTextTheme.semiBold),
                    ),
                  ],
                  onChanged: (value) {
                    // handle selection
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
