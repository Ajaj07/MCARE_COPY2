import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mcare_copy2/utils/helpers/device_helpers.dart';

import '../../../common/widgets/Buttons/primary_button.dart';
import '../../../utils/constants/colors.dart';
import 'widgets/email_container.dart';
import 'widgets/phone_container.dart';

///-------------------[Without screen util]----------------------
/*
class PhoneRegistration extends StatefulWidget {
  const PhoneRegistration({super.key});

  @override
  State<PhoneRegistration> createState() => _PhoneRegistrationState();
}

class _PhoneRegistrationState extends State<PhoneRegistration> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.only(
            top: MDeviceHelper.getAppBarHeight() / 2,
            left: 28,
            right: 28,
            bottom: MDeviceHelper.getBottomNavigationBarHeight(),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Back Button
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.chevron_left),
                ),

                const SizedBox(height: 32),

                /// Title
                const Text(
                  'Complete Personal Identification',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),

                const SizedBox(height: 14),

                /// Description
                Text(
                  'You can connect with all healthcare facilities you\'ve previously visited',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: MColors.textSecondaryColor),
                ),

                const SizedBox(height: 14),

                /// Tab Bar
                TabBar(
                  onTap: (index) {
                    setState(() {
                      selectedTab = index;
                    });
                  },
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: MColors.primaryColor,
                  labelColor: MColors.primaryColor,
                  dividerHeight: 2,
                  dividerColor: MColors.secondaryColor,
                  labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: 'Khula'),
                  unselectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Khula'),
                  tabs: const [
                    Tab(text: "No Phone"),
                    Tab(text: "Email"),
                  ],
                ),

                const SizedBox(height: 24),

                /// Dynamic Field
                selectedTab == 0
                    /// Phone
                    ? PhoneContainer()
                    /// Email
                    : EmailContainer(),

                const SizedBox(height: 26),

                Text(
                  'Full Name',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MColors.primaryColor),
                ),
                SizedBox(height: 12),

                /// Full Name
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
                          'Enter Your Name',
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

                const SizedBox(height: 26),
                Text(
                  'Gender',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MColors.primaryColor),
                ),
                const SizedBox(height: 12),

                /// Gender
                Container(
                  width: double.infinity,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: MColors.secondaryColor, width: 1),
                  ),
                  child: DropdownButtonFormField<String>(
                    value: null,
                    hint: Text(
                      'Choose your gender',
                      style: TextStyle(
                        fontFamily: 'Khula',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: MColors.textThirtyColor,
                      ),
                    ),
                    icon: const Icon(Icons.keyboard_arrow_down, size: 20),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 14),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    items: const [
                      DropdownMenuItem(value: 'male', child: Text('Male')),
                      DropdownMenuItem(value: 'female', child: Text('Female')),
                      DropdownMenuItem(value: 'other', child: Text('Other')),
                    ],
                    onChanged: (value) {
                      // handle selection
                    },
                  ),
                ),
                ////
                const SizedBox(height: 26),
                Text(
                  'Date of birth',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MColors.primaryColor),
                ),
                const SizedBox(height: 12),

                /// Date Of Birth
                Container(
                  width: double.infinity,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: MColors.secondaryColor, width: 1),
                  ),
                  child: TextFormField(
                    readOnly: true,
                    onTap: () async {
                      final picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );
                      // handle picked date
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your date of birth',
                      hintStyle: const TextStyle(
                        fontFamily: 'Khula',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: MColors.textThirtyColor,
                      ),
                      suffixIcon: const Icon(Icons.calendar_month_outlined),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 14),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                ///
                const SizedBox(height: 26),

                /// check box
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Checkbox(
                      side: BorderSide(
                        color: MColors.secondaryColor, // Your custom border color
                        // width: 2.0, // Your custom border width
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
                      value: false,
                      onChanged: (val) {},
                    ),
                    Expanded(
                      child: Text(
                        'You agree to receive information and notifications sent by MedCare',
                        style: TextStyle(color: MColors.textSecondaryColor, fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),

                /// Register Button
                Padding(
                  padding: EdgeInsets.only(top: MDeviceHelper.getBottomNavigationBarHeight()),
                  child: MPButton(label: 'Register'),
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: MColors.textSecondaryColor),

                    TextSpan(
                      text: " Already have an account? ",
                      children: [
                        TextSpan(
                          text: ' Click here to log in?  ',
                          style: TextStyle(color: MColors.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/

///-------------------[With screen util]----------------------

import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneRegistration extends StatefulWidget {
  const PhoneRegistration({super.key});

  @override
  State<PhoneRegistration> createState() => _PhoneRegistrationState();
}

class _PhoneRegistrationState extends State<PhoneRegistration> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.only(
            top: MDeviceHelper.getAppBarHeight() / 2,
            left: 28.w,
            right: 28.w,
            bottom: MDeviceHelper.getBottomNavigationBarHeight(),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Back Button
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.chevron_left, size: 24.sp),
                ),

                SizedBox(height: 32.h),

                /// Title
                Text(
                  'Complete Personal Identification',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                ),

                SizedBox(height: 14.h),

                /// Description
                Text(
                  'You can connect with all healthcare facilities you\'ve previously visited',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp, color: MColors.textSecondaryColor),
                ),

                SizedBox(height: 14.h),

                /// Tab Bar
                TabBar(
                  onTap: (index) {
                    setState(() {
                      selectedTab = index;
                    });
                  },
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: MColors.primaryColor,
                  labelColor: MColors.primaryColor,
                  dividerHeight: 2.h,
                  dividerColor: MColors.secondaryColor,
                  labelStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700, fontFamily: 'Khula'),
                  unselectedLabelStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, fontFamily: 'Khula'),
                  tabs: const [
                    Tab(text: "No Phone"),
                    Tab(text: "Email"),
                  ],
                ),

                SizedBox(height: 24.h),

                /// Dynamic Field
                selectedTab == 0
                    /// Phone
                    ? const PhoneContainer()
                    /// Email
                    : const EmailContainer(),

                SizedBox(height: 26.h),

                Text(
                  'Full Name',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: MColors.primaryColor),
                ),
                SizedBox(height: 12.h),

                /// Full Name
                Container(
                  width: double.infinity,
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(color: MColors.secondaryColor, width: 1.w),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.w, bottom: 17.5.h),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Your Name',
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

                SizedBox(height: 26.h),
                Text(
                  'Gender',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: MColors.primaryColor),
                ),
                SizedBox(height: 12.h),

                /// Gender
                Container(
                  width: double.infinity,
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(color: MColors.secondaryColor, width: 1.w),
                  ),
                  child: DropdownButtonFormField<String>(
                    value: null,
                    hint: Text(
                      'Choose your gender',
                      style: TextStyle(
                        fontFamily: 'Khula',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: MColors.textThirtyColor,
                      ),
                    ),
                    icon: Icon(Icons.keyboard_arrow_down, size: 20.sp),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 14.w),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    items: const [
                      DropdownMenuItem(value: 'male', child: Text('Male')),
                      DropdownMenuItem(value: 'female', child: Text('Female')),
                      DropdownMenuItem(value: 'other', child: Text('Other')),
                    ],
                    onChanged: (value) {
                      // handle selection
                    },
                  ),
                ),

                SizedBox(height: 26.h),
                Text(
                  'Date of birth',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: MColors.primaryColor),
                ),
                SizedBox(height: 12.h),

                /// Date Of Birth
                Container(
                  width: double.infinity,
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(color: MColors.secondaryColor, width: 1.w),
                  ),
                  child: TextFormField(
                    readOnly: true,
                    onTap: () async {
                      final picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );
                      // handle picked date
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your date of birth',
                      hintStyle: TextStyle(
                        fontFamily: 'Khula',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: MColors.textThirtyColor,
                      ),
                      suffixIcon: Icon(Icons.calendar_month_outlined, size: 24.sp),
                      contentPadding: EdgeInsets.symmetric(horizontal: 14.w),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                SizedBox(height: 26.h),

                /// check box
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5.w,
                  children: [
                    Checkbox(
                      side: const BorderSide(color: MColors.secondaryColor),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0.r)),
                      value: false,
                      onChanged: (val) {},
                    ),
                    Expanded(
                      child: Text(
                        'You agree to receive information and notifications sent by MedCare',
                        style: TextStyle(
                          color: MColors.textSecondaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),

                /// Register Button
                Padding(
                  padding: EdgeInsets.only(top: MDeviceHelper.getBottomNavigationBarHeight()),
                  child: MPButton(label: 'Register'),
                ),
                SizedBox(height: 16.h),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, color: MColors.textSecondaryColor),
                    const TextSpan(
                      text: " Already have an account? ",
                      children: [
                        TextSpan(
                          text: ' Click here to log in?  ',
                          style: TextStyle(color: MColors.primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
