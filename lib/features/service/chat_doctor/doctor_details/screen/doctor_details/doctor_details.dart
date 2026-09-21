import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/common/widgets/Buttons/secondary_button.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../common/routes/app_routes.dart';
import '../../../../../../common/widgets/Buttons/primary_button.dart';
import '../../../../../../common/widgets/review/review.dart';
import '../../../widgets/edu_and_lic_row.dart';
import '../../widgets/day_tile.dart';
import '../../widgets/hour_tile.dart';
import 'widgets/profile_section.dart';

class DoctorDetails extends StatelessWidget {
  DoctorDetails({super.key});
  final List<Map<String, dynamic>> scheduleDays = [
    {'dayName': 'Wed', 'dayNumber': 22},
    {'dayName': 'Thu', 'dayNumber': 23},
    {'dayName': 'Fri', 'dayNumber': 24},
    {'dayName': 'Sat', 'dayNumber': 25},
    {'dayName': 'Sun', 'dayNumber': 26},
    {'dayName': 'Mon', 'dayNumber': 27},
    {'dayName': 'Tue', 'dayNumber': 28},
    {'dayName': 'Wed', 'dayNumber': 29},
    {'dayName': 'Thu', 'dayNumber': 30},
    {'dayName': 'Fri', 'dayNumber': 1},
    {'dayName': 'Sat', 'dayNumber': 2},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F1FF),
      // backgroundColor: Colors.red,
      appBar: PreferredSize(preferredSize: const Size.fromHeight(kToolbarHeight), child: DocDeteailsAppBar()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ProfileSection(),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                // color: Colors.red,
                color: const Color(0XFFFFFFFF),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                  // Adjust the number to match your exact curvature
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 28.w, right: 28.w, top: 29.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// ----------------------[ Education and Licence Section]--------------------------------
                          EduAndLicRow(),
                          SizedBox(height: 29.h),

                          ///-----------------------------[Practice Location Section]---------------------------------

                          // heading text
                          _headingText(label: 'Practice Location'),
                          SizedBox(height: 16.h),
                          //clinic name
                          ClinicName(),
                          SizedBox(height: 29.h),

                          ///----------------------[ Working hours Section]----------------------------------------
                          _headingText(label: 'Working Hours'),
                          SizedBox(height: 16.h),

                          Wrap(
                            spacing: 16.w,
                            runSpacing: 16.h,
                            children: [
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
                    SizedBox(height: 29.h),

                    ///---------------------------[Schedule Section]---------------------------------------------
                    Padding(
                      padding: EdgeInsets.only(left: 28.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _headingText(label: 'Schedule'),
                          SizedBox(height: 16.h),
                          SizedBox(
                            height: 58.h, // removed width: double.infinity as it's redundant inside a Column
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              itemCount: scheduleDays.length,
                              separatorBuilder: (context, index) => SizedBox(width: 15.w),
                              itemBuilder: (context, index) {
                                final item = scheduleDays[index];
                                return DayTile(days: item['dayName'], day: item['dayNumber']);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 29.h),

                    ///---------------------------[Review Section]---------------------------------------------
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26.w),
                      child: Text('Review', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
                    ),
                    SizedBox(height: 7.h),

                    // horizontal list view or review card
                    Padding(
                      padding: EdgeInsets.only(left: 26.w),
                      child: SizedBox(
                        height: 200.h,
                        width: double.infinity,
                        child: ListView.separated(
                          padding: EdgeInsets.all(8.w),
                          clipBehavior: Clip.antiAlias,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return MReviewCard(
                              name: 'Emily Johnson',
                              avatarAsset: 'assets/images/chat/doc_details1.jpg',
                              daysAgo: '1 day ago',
                              rating: 4.0,
                              reviewText:
                                  "My consultation with Dr. Luca Rossi was excellent. He's knowledgeable, attentive, and provid...",
                              onMoreViewTap: () => print('open full review'),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(width: 20.w),
                          itemCount: 3,
                        ),
                      ),
                    ),

                    ///
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 14),
        height: kBottomNavigationBarHeight,
        width: double.infinity,
        child: Row(
          spacing: 12,
          children: [
            SizedBox(
              height: 51,
              child: MSButton2(
                buttonStyle: ButtonStyle(
                  side: WidgetStatePropertyAll(BorderSide(width: 1, color: MColors.primaryColor)),
                ),
                label: 'Chat',
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 51,
                child: MPButton2(label: 'Make An Appointment', callback: () => Get.toNamed(AppRoutes.conformation)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _headingText({required String label}) {
    return Text(label, style: MTextTheme.semiBold.copyWith(fontSize: 16.sp));
  }
}

class ClinicName extends StatelessWidget {
  const ClinicName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color(0XFFF9F8FD)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 21.5.h),
            child: Text('Rossi Cardiology Clinic', style: MTextTheme.semiBold.copyWith(color: MColors.primaryColor)),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(14.0.w),
            child: Icon(Icons.keyboard_arrow_down_outlined, size: 24.w, color: MColors.textSecondaryColor),
          ),
        ],
      ),
    );
  }
}

class DocDeteailsAppBar extends StatelessWidget {
  const DocDeteailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Color(0xFFF6F1FF),
      leading: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        onPressed: () => Get.back(),
        icon: Icon(Icons.chevron_left, color: MColors.iconColor1),
      ),
      title: Text('Doctor Details', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
      centerTitle: true,
      actions: [
        // give padding about 28px if needed
        SvgPicture.asset(
          'assets/icons/svg/share_icon.svg',
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
          fit: BoxFit.fill,
        ),
        SizedBox(width: 28),
      ],
    );
  }
}
