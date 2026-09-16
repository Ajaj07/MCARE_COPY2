import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mcare_copy2/utils/helpers/device_helpers.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';
import '../../../common/widgets/Buttons/primary_button.dart';
import '../../../common/widgets/TextField/text_field.dart';
import '../../../utils/constants/colors.dart';
import 'widgets/email_container.dart';
import 'widgets/phone_container.dart';

///--------------------------[without Screen Util] --------------------------
/*
class PhoneRegistration extends StatefulWidget {
  const PhoneRegistration({super.key});

  @override
  State<PhoneRegistration> createState() => _PhoneRegistrationState();
}

class _PhoneRegistrationState extends State<PhoneRegistration> {
  int selectedTab = 0;
  String? selectedGender;
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
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.chevron_left),
                ),

                const SizedBox(height: 25),

                /// Title
                const Text(
                  'Complete Personal Identification',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),

                const SizedBox(height: 14),

                /// Description
                Text(
                  'You can connect with all healthcare facilities you\'ve previously visited',
                  style: MTextTheme.labelMedium,
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
                  labelStyle: MTextTheme.bold,
                  unselectedLabelStyle: MTextTheme.regular,
                  tabs: const [
                    Tab(text: "No Phone"),
                    Tab(text: "Email"),
                  ],
                ),

                const SizedBox(height: 20),

                /// Dynamic Field
                selectedTab == 0
                    /// Phone
                    ? PhoneContainer()
                    /// Email
                    : EmailContainer(),

                const SizedBox(height: 20),

                Text('Full Name', style: MTextTheme.bold.copyWith(fontWeight: FontWeight.w600)),
                SizedBox(height: 12),

                /// Full Name
                CustomField(
                  hintText: "Enter Your Name",
                  hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
                ),

                const SizedBox(height: 20),
                Text('Gender', style: MTextTheme.bold.copyWith(fontWeight: FontWeight.w600)),
                const SizedBox(height: 12),

                ////
                CustomField(
                  readOnly: true,
                  hintText: 'Select gender',
                  hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
                  controller: TextEditingController(text: selectedGender), // or manage via a real controller
                  trailing: const Icon(Icons.keyboard_arrow_down, size: 20),
                  onTap: () async {
                    final result = await showModalBottomSheet<String>(
                      context: context,
                      builder: (context) => SafeArea(
                        child: Wrap(
                          children: [
                            'Male',
                            'Female',
                            'Other',
                          ].map((g) => ListTile(title: Text(g), onTap: () => Navigator.pop(context, g))).toList(),
                        ),
                      ),
                    );
                    if (result != null) {
                      setState(() => selectedGender = result);
                    }
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  'Date of birth',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MColors.primaryColor),
                ),
                const SizedBox(height: 12),

                /// Date Of Birth
                CustomField(
                  onTap: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                  },
                  readOnly: true,
                  hintText: "Enter Your Date of Birth",
                  hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
                  trailing: Icon(Icons.calendar_month_outlined),
                ),

                ///
                const SizedBox(height: 20),

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
                  child: MPButton(label: 'Register', pressed: () => Get.toNamed('/emailVerification')),
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

///--------------------------[with Screen Util] --------------------------

class PhoneRegistration extends StatefulWidget {
  const PhoneRegistration({super.key});

  @override
  State<PhoneRegistration> createState() => _PhoneRegistrationState();
}

class _PhoneRegistrationState extends State<PhoneRegistration> {
  int selectedTab = 0;
  String? selectedGender;

  // Kept as a stable controller instead of being recreated on every build
  // (recreating it inline loses cursor state and leaks the old instance).
  late final TextEditingController _genderController;

  @override
  void initState() {
    super.initState();
    _genderController = TextEditingController(text: selectedGender);
  }

  @override
  void dispose() {
    _genderController.dispose();
    super.dispose();
  }

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
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.chevron_left, size: 24.sp),
                ),

                SizedBox(height: 25.h),

                /// Title
                Text(
                  'Complete Personal Identification',
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
                ),

                SizedBox(height: 14.h),

                /// Description
                Text(
                  'You can connect with all healthcare facilities you\'ve previously visited',
                  style: MTextTheme.labelMedium,
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
                  labelStyle: MTextTheme.bold,
                  unselectedLabelStyle: MTextTheme.regular,
                  tabs: const [
                    Tab(text: "No Phone"),
                    Tab(text: "Email"),
                  ],
                ),

                SizedBox(height: 20.h),

                /// Dynamic Field
                selectedTab == 0
                    /// Phone
                    ? PhoneContainer()
                    /// Email
                    : EmailContainer(),

                SizedBox(height: 20.h),

                Text('Full Name', style: MTextTheme.bold.copyWith(fontWeight: FontWeight.w600)),
                SizedBox(height: 12.h),

                /// Full Name
                CustomField(
                  hintText: "Enter Your Name",
                  hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
                ),

                SizedBox(height: 20.h),
                Text('Gender', style: MTextTheme.bold.copyWith(fontWeight: FontWeight.w600)),
                SizedBox(height: 12.h),

                ////
                CustomField(
                  readOnly: true,
                  hintText: 'Select gender',
                  hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
                  controller: _genderController,
                  trailing: Icon(Icons.keyboard_arrow_down, size: 20.sp),
                  onTap: () async {
                    final result = await showModalBottomSheet<String>(
                      context: context,
                      builder: (context) => SafeArea(
                        child: Wrap(
                          children: [
                            'Male',
                            'Female',
                            'Other',
                          ].map((g) => ListTile(title: Text(g), onTap: () => Navigator.pop(context, g))).toList(),
                        ),
                      ),
                    );
                    if (result != null) {
                      setState(() {
                        selectedGender = result;
                        _genderController.text = result;
                      });
                    }
                  },
                ),
                SizedBox(height: 20.h),
                Text(
                  'Date of birth',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: MColors.primaryColor),
                ),
                SizedBox(height: 12.h),

                /// Date Of Birth
                CustomField(
                  onTap: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                  },
                  readOnly: true,
                  hintText: "Enter Your Date of Birth",
                  hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
                  trailing: Icon(Icons.calendar_month_outlined, size: 20.sp),
                ),

                ///
                SizedBox(height: 20.h),

                /// check box
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5.w,
                  children: [
                    Checkbox(
                      side: BorderSide(
                        color: MColors.secondaryColor, // Your custom border color
                        // width: 2.0, // Your custom border width
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.r)),
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
                  child: MPButton(label: 'Register', pressed: () => Get.toNamed('/emailVerification')),
                ),
                SizedBox(height: 16.h),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, color: MColors.textSecondaryColor),
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
