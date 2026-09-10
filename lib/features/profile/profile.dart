import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../common/widgets/Buttons/secondary_button.dart';

import '../../utils/theme/widget/text_theme_screen_util.dart';
import 'widgets/menu.dart';
import 'widgets/profile_row.dart';
import 'widgets/settings_menu_item.dart';

///-----------------------------[without Screen Util ]-------------------------------
/*
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBFAFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        // centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/back_arrow.png', width: 24.w, height: 24.h, fit: BoxFit.cover),
        ),
        title: Text('My Profile', style: MTextTheme.regular),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 30),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///--------------------------------[Profile Row Section]---------------------------
                Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), child: ProfileRow()),
                SizedBox(height: 30),

                ///--------------------------------[Menu section]----------------------------------
                Text('Menu', style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
                SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                  child: Column(
                    spacing: 10,
                    children: [
                      Menu(
                        imageName: 'assets/icons/svg/book_mark.svg',
                        title: 'Prescription History',
                        subtitle: 'Check out the full prescription history here',
                      ),

                      Menu(
                        imageName: 'assets/icons/svg/health_alive.svg',
                        title: 'Health History',
                        subtitle: 'Check  detail regarding your medical history ',
                      ),
                      Menu(
                        imageName: 'assets/icons/svg/transactions.svg',
                        title: 'Transactions',
                        subtitle: 'Look back at your previous transactions',
                      ),
                    ],
                  ),
                ),

                ///--------------------------------[General Information]---------------------------
                Text('General Information', style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Material(
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 15,
                      children: [
                        // 1. Account Settings
                        SettingsMenuItem(iconPath: 'assets/icons/svg/settings.svg', label: 'Account Settings'),

                        // 2. Notification
                        SettingsMenuItem(iconPath: 'assets/icons/svg/solar_bell.svg', label: 'Notification'),

                        // 3. Reference Settings
                        SettingsMenuItem(
                          iconPath: 'assets/icons/svg/reffrence_setting.svg',
                          label: 'Reference Settings',
                        ),

                        // 4. Dark Mode — same row layout, but with a trailing switch
                        SettingsMenuItem(
                          iconPath: 'assets/icons/svg/moon_crescent.svg',
                          label: 'Dark Mode',
                          trailing: Transform.scale(
                            scale: 0.65,
                            child: CupertinoSwitch(
                              value: false,
                              onChanged: (value) {},
                              activeTrackColor: Color(0XFFD9D9D9),
                              inactiveTrackColor: Color(0XFFD9D9D9),
                              thumbColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                ///--------------------------------[Log Out]---------------------------------------
                SizedBox(width: 30),
                SizedBox(
                  width: double.infinity,
                  child: MSButton2(
                    label: 'Log Out',
                    buttonStyle: ButtonStyle(
                      side: WidgetStatePropertyAll(BorderSide(color: MColors.thirtyColor, width: 1)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                    ),
                    textStyle: MTextTheme.semiBold.copyWith(fontSize: 16, color: Color(0XFF9F3000)),
                  ),
                ),
                SizedBox(width: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
///-----------------------------[with Screen Util ]-------------------------------

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBFAFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        // centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/back_arrow.png', width: 24.w, height: 24.h, fit: BoxFit.cover),
        ),
        title: Text('My Profile', style: MTextTheme.regular),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 30.h),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///--------------------------------[Profile Row Section]---------------------------
                Material(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: ProfileRow(),
                  ),
                ),
                SizedBox(height: 30.h),

                ///--------------------------------[Menu section]----------------------------------
                Text('Menu', style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
                SizedBox(height: 20.h),

                Material(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
                    child: Column(
                      spacing: 10.h,
                      children: [
                        Menu(
                          imageName: 'assets/icons/svg/book_mark.svg',
                          title: 'Prescription History',
                          subtitle: 'Check out the full prescription history here',
                        ),

                        Menu(
                          imageName: 'assets/icons/svg/health_alive.svg',
                          title: 'Health History',
                          subtitle: 'Check  detail regarding your medical history ',
                        ),
                        Menu(
                          imageName: 'assets/icons/svg/transactions.svg',
                          title: 'Transactions',
                          subtitle: 'Look back at your previous transactions',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.h),

                ///--------------------------------[General Information]---------------------------
                Text('General Information', style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
                SizedBox(height: 20.h),
                Material(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
                    child: Material(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 15.h,
                        children: [
                          // 1. Account Settings
                          SettingsMenuItem(iconPath: 'assets/icons/svg/settings.svg', label: 'Account Settings'),

                          // 2. Notification
                          SettingsMenuItem(iconPath: 'assets/icons/svg/solar_bell.svg', label: 'Notification'),

                          // 3. Reference Settings
                          SettingsMenuItem(
                            iconPath: 'assets/icons/svg/reffrence_setting.svg',
                            label: 'Reference Settings',
                          ),

                          // 4. Dark Mode — same row layout, but with a trailing switch
                          SettingsMenuItem(
                            iconPath: 'assets/icons/svg/moon_crescent.svg',
                            label: 'Dark Mode',
                            trailing: Transform.scale(
                              scale: 0.65,
                              child: CupertinoSwitch(
                                value: false,
                                onChanged: (value) {},
                                activeTrackColor: Color(0XFFD9D9D9),
                                inactiveTrackColor: Color(0XFFD9D9D9),
                                thumbColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                ///--------------------------------[Log Out]---------------------------------------
                SizedBox(height: 30.h),
                SizedBox(
                  width: double.infinity,
                  child: MSButton2(
                    label: 'Log Out',
                    buttonStyle: ButtonStyle(
                      side: WidgetStatePropertyAll(BorderSide(color: MColors.thirtyColor, width: 1.w)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r))),
                    ),
                    textStyle: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: Color(0XFF9F3000)),
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
