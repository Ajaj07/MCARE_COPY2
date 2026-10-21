import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/common/routes/app_routes.dart';
import '../../../common/widgets/Buttons/primary_button.dart';
import '../../../common/widgets/images/comon_profile.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/theme/widget/text_theme.dart';

/// without screen util
/*
class VisitedCard extends StatelessWidget {
  const VisitedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Color(0XFFE3E3E3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // first row (Profile )
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //name  and  Desiganation Column
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Giovanni Bianchi',
                    style: MTextTheme.semiBold.copyWith(fontSize: 16),
                  ),
                  // SizedBox(height: 10),
                  Text(
                    'General Surgery',
                    style: MTextTheme.bodyMedium.copyWith(
                      color: MColors.textSecondaryColor,
                    ),
                  ),
                ],
              ),
              ComonProfile(
                width: 44,
                height: 44,
                imageName: 'assets/images/chat/fabian.png',
                borderWidth: 4,
                boxFit: BoxFit.fill,
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(height: 2, color: Color(0XFFE3E3E3)),
          SizedBox(height: 20),
          // second Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // date Time
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date& Time',
                      style: MTextTheme.bodyMedium.copyWith(
                        color: MColors.textThirtyColor,
                      ),
                    ),
                    // SizedBox(height: 12),
                    Text(
                      'Wednesday, 29 Feb 04.00 pm',
                      style: MTextTheme.bodyLarge.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),

              // Location
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: MTextTheme.bodyMedium.copyWith(
                        color: MColors.textThirtyColor,
                      ),
                    ),
                    // SizedBox(height: 12),
                    Text(
                      'Bella Vista Surgery Clinic, Via Garibaldi 10, Milan, Italy',
                      style: MTextTheme.bodyLarge.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // 3 'rd Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/icons/svg/solar_bell.svg',
                width: 24,
                height: 24,
                colorFilter: const ColorFilter.mode(
                  MColors.textSecondaryColor,
                  BlendMode.srcIn,
                ),
              ),
              Text(
                'Notifications ',
                style: MTextTheme.bodyMedium.copyWith(
                  color: MColors.textSecondaryColor,
                ),
              ),
              Text(
                'On',
                style: MTextTheme.bold.copyWith(
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                  decorationColor: MColors.primaryColor,
                  // decorationStyle: TextDecorationStyle.solid,
                  // decorationStyle:
                ),
              ),
              SizedBox(width: 36),
              Flexible(
                child: Container(
                  width: double.infinity,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: MColors.primaryColor,
                  ),
                  child: Text(
                    'Reschedule',
                    style: MTextTheme.semiBold.copyWith(color: Colors.white),
                  ),
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

/// with screen util
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../service/chat_doctor/doctor_details/widgets/day_tile.dart';
import '../../service/chat_doctor/doctor_details/widgets/hour_tile.dart';

class VisitedCard extends StatelessWidget {
  const VisitedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(width: 1.w, color: const Color(0XFFE3E3E3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // first row (Profile )
          InkWell(
            onDoubleTap: () => Get.toNamed(AppRoutes.historyEmpty),
            onTap: () {
              Get.toNamed(AppRoutes.chatScreen);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //name  and  Desiganation Column
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dr. Giovanni Bianchi', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
                    // SizedBox(height: 10),
                    Text('General Surgery', style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
                  ],
                ),
                ComonProfile(
                  width: 44.w,
                  height: 44.h,
                  imageName: 'assets/images/chat/fabian.png',
                  borderWidth: 4.w,
                  boxFit: BoxFit.fill,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Divider(height: 2.h, color: const Color(0XFFE3E3E3)),
          SizedBox(height: 20.h),
          // second Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // date Time
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Date& Time', style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),
                    // SizedBox(height: 12),
                    Text('Wednesday, 29 Feb 04.00 pm', style: MTextTheme.bodyLarge.copyWith(fontSize: 12.sp)),
                  ],
                ),
              ),

              // Location
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Location', style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),
                    // SizedBox(height: 12),
                    Text(
                      'Bella Vista Surgery Clinic, Via Garibaldi 10, Milan, Italy',
                      style: MTextTheme.bodyLarge.copyWith(fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          // 3 'rd Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/icons/svg/solar_bell.svg',
                width: 20.w, // 24
                height: 20.h, //24
                colorFilter: const ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
              ),
              Text(' Notifications ', style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
              InkWell(
                onTap: () {
                  notificationBottomSheet(context);
                },
                child: Text(
                  'On',
                  style: MTextTheme.bold.copyWith(
                    fontSize: 12.sp,
                    decoration: TextDecoration.underline,
                    decorationColor: MColors.primaryColor,
                    // decorationStyle: TextDecorationStyle.solid,
                    // decorationStyle:
                  ),
                ),
              ),
              SizedBox(width: 36.w),
              Expanded(
                child: MPButton2(
                  label: 'Reschedule',
                  callback: () {
                    rescheduleBottomSheet(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

///notification Bottom Sheet
Future<void> notificationBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.white,
    useSafeArea: true,
    showDragHandle: false,
    isDismissible: true, // tap outside to close (default true)
    enableDrag: true, // swipe down to close (default true)
    isScrollControlled: true, // removes the default 9/16 screen height cap
    constraints: const BoxConstraints(maxWidth: double.infinity), // keeps full width like before
    sheetAnimationStyle: AnimationStyle(duration: const Duration(seconds: 1), curve: FlippedCurve(Curves.easeIn)),
    builder: (context) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        decoration: BoxDecoration(color: Color(0XFFFFFFFF), borderRadius: BorderRadius.circular(20.r)),
        width: double.infinity,
        child: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Container(
                    width: 60.w,
                    height: 4.h,
                    decoration: BoxDecoration(color: const Color(0xFFA6CFD5), borderRadius: BorderRadius.circular(4.r)),
                  ),
                ),

                /// Notification title
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Notification',
                      style: MTextTheme.bold.copyWith(fontWeight: FontWeight.w600, color: const Color(0XFF090909)),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(width: 1, color: MColors.thirtyColor),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Activate notifications', style: MTextTheme.labelMedium),
                      Switch(
                        thumbColor: const WidgetStatePropertyAll(Color(0XFFFFFFFF)),
                        activeTrackColor: MColors.primaryColor,
                        value: true,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.w),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 51.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: MColors.primaryColor),
                          onPressed: () {
                            Get.toNamed(AppRoutes.chatScreen);
                          },
                          child: Text(
                            'Submit',
                            style: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

/// Schedule botttom sheet

Future<void> rescheduleBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.white,
    useSafeArea: true,
    showDragHandle: false, // turned off default handle, using custom one below
    isDismissible: true, // tap outside to close
    enableDrag: true, // swipe down to close
    isScrollControlled: true, // removes the default 9/16 screen height cap
    constraints: const BoxConstraints(maxWidth: double.infinity), // keeps full width like before
    sheetAnimationStyle: AnimationStyle(duration: const Duration(seconds: 1), curve: FlippedCurve(Curves.easeIn)),
    builder: (context) {
      return Container(
        decoration: BoxDecoration(color: Color(0XFFFFFFFF), borderRadius: BorderRadius.circular(20.r)),
        width: double.infinity,
        child: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                /// custom drag indicator
                SizedBox(height: 12.h),
                Center(
                  child: Container(
                    width: 60.w,
                    height: 4.h,
                    decoration: BoxDecoration(color: const Color(0xFFA6CFD5), borderRadius: BorderRadius.circular(4.r)),
                  ),
                ),

                /// reschedule title
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Reschedule Appointment', style: MTextTheme.bold.copyWith(color: const Color(0XFF090909))),
                  ],
                ),
                SizedBox(height: 20.h),

                /// working hours
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Working Hours',
                        style: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: MColors.textSecondaryColor),
                      ),
                      SizedBox(height: 10.h),
                      // hour tile
                      Wrap(
                        spacing: 16.w,
                        runSpacing: 16.h,
                        children: const [
                          HourTile(time: '9.00 AM'),
                          HourTile(time: '10.00 AM'),
                          HourTile(time: '1.00 PM'),
                          HourTile(time: '2.00 PM'),
                          HourTile(time: '3.00 PM'),
                          HourTile(time: '4.00 PM'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),

                /// Schedule
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Schedule',
                        style: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: MColors.textSecondaryColor),
                      ),
                      SizedBox(height: 16.h),
                      SizedBox(
                        width: double.infinity,
                        height: 58.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            const DayTile(days: 'Wed', day: 22),
                            SizedBox(width: 15.w),
                            const DayTile(days: 'Wed', day: 22),
                            SizedBox(width: 15.w),
                            const DayTile(days: 'Wed', day: 22),
                            SizedBox(width: 15.w),
                            const DayTile(days: 'Wed', day: 22),
                            SizedBox(width: 15.w),
                            const DayTile(days: 'Wed', day: 22),
                            SizedBox(width: 15.w),
                            const DayTile(days: 'Wed', day: 22),
                            SizedBox(width: 15.w),
                            const DayTile(days: 'Wed', day: 22),
                            SizedBox(width: 15.w),
                            const DayTile(days: 'Wed', day: 22),
                            SizedBox(width: 15.w),
                            const DayTile(days: 'Wed', day: 22),
                            SizedBox(width: 15.w),
                            const DayTile(days: 'Wed', day: 22),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                /// Buttons
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Get.back(), // close sheet
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(width: 1, color: MColors.thirtyColor),
                          ),
                          child: Text(
                            'Cancel',
                            style: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: MColors.primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.sp),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.historyEmpty);
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: MColors.primaryColor),
                          child: Text(
                            'Reschedule',
                            style: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
