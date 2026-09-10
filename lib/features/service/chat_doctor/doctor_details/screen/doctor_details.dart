import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/features/service/chat_doctor/doctor_details/conformation/conformation.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/circle_profile.dart';
import '../../widgets/edu_and_lic_row.dart';
import '../widgets/day_tile.dart';
import '../widgets/hour_tile.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

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
                          /// Education and Licence Section
                          EduAndLicRow(),
                          SizedBox(height: 29.h),

                          ///Practice Location Section
                          // heading text
                          HeadingText(label: 'Practice Location'),
                          SizedBox(height: 16.h),
                          //clinic name
                          ClinicName(),
                          SizedBox(height: 29.h),

                          /// Working hours
                          HeadingText(label: 'Working Hours'),
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

                    /// Schedule ....
                    Padding(
                      padding: EdgeInsets.only(left: 28.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(label: 'Schedule'),
                          SizedBox(height: 16.h),
                          SizedBox(
                            width: double.infinity,
                            height: 58.h,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              children: [
                                DayTile(days: 'Wed', day: 22),
                                SizedBox(width: 15.w),
                                DayTile(days: 'Wed', day: 22),
                                SizedBox(width: 15.w),
                                DayTile(days: 'Wed', day: 22),
                                SizedBox(width: 15.w),
                                DayTile(days: 'Wed', day: 22),
                                SizedBox(width: 15.w),
                                DayTile(days: 'Wed', day: 22),
                                SizedBox(width: 15.w),
                                DayTile(days: 'Wed', day: 22),
                                SizedBox(width: 15.w),
                                DayTile(days: 'Wed', day: 22),
                                SizedBox(width: 15.w),
                                DayTile(days: 'Wed', day: 22),
                                SizedBox(width: 15.w),
                                DayTile(days: 'Wed', day: 22),
                                SizedBox(width: 15.w),
                                DayTile(days: 'Wed', day: 22),
                                SizedBox(width: 15.w),
                                DayTile(days: 'Wed', day: 22),
                                // SizedBox(width: 15.w),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 29.h),

                    /// review ....
                    Padding(
                      padding: EdgeInsets.only(left: 28.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(label: 'Review'),
                          SizedBox(height: 16.h),
                          SizedBox(
                            height: 190, // match your card's Hug height from Figma
                            child: ListView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              children: [
                                SizedBox(width: 280, child: ReviewCard()),
                                SizedBox(width: 16.w),
                                SizedBox(width: 280, child: ReviewCard()),
                                SizedBox(width: 16.w),
                                SizedBox(width: 280, child: ReviewCard()),
                              ],
                            ),
                          ),
                        ],
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
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 5)],
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min, // Hug height
        children: [
          Row(
            children: [
              CircleAvatar(radius: 28, backgroundImage: AssetImage('assets/images/chat/doc_details1.jpg')),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  spacing: 7,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Emily Johnson', style: MTextTheme.regular.copyWith(fontSize: 14)),
                    Text(
                      '1  day ago',
                      style: MTextTheme.regular.copyWith(fontSize: 10, color: MColors.textSecondaryColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 1,
                      children: [
                        Icon(Icons.star, color: Color(0XFFFFA740), size: 14),
                        Icon(Icons.star, color: Color(0XFFFFA740), size: 14),
                        Icon(Icons.star, color: Color(0XFFFFA740), size: 14),
                        Icon(Icons.star, color: Color(0XFFFFA740), size: 14),
                        Icon(Icons.star_border, color: Color(0XFFFFA740), size: 14),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16), // matches Figma "gap: 16"
          // More View Text { style : Regular[14,400,textSecondary] for more text style : semibold[14,600,primary] }
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'My consultation with Dr. Luca Rossi was excellent. He\'s knowledgeable, attentive, and provid...  ',
                  style: MTextTheme.regular.copyWith(
                    fontSize: 14,
                    height: 1.5, // 150% line height
                    letterSpacing: 0.14, // 1% of 14px
                  ),
                ),
                TextSpan(
                  text: 'More view',
                  style: MTextTheme.semiBold.copyWith(
                    fontSize: 14,
                    height: 1.5,
                    letterSpacing: 0.14,
                    color: MColors.primaryColor,
                  ),
                  // recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
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

class HeadingText extends StatelessWidget {
  const HeadingText({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label, style: MTextTheme.semiBold.copyWith(fontSize: 16.sp));
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const Conformation());
      },
      child: Container(
        width: double.infinity,
        color: Color(0xFFF6F1FF),
        height: 288.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10.h, // all size is 14
          children: [
            // profile picture
            //container 100x100  border width: 4px ,color:secondary
            ProfileStack(),
            // name
            Text('Dr. Luca Rossi', style: MTextTheme.semiBold.copyWith(fontSize: 20.sp)),
            //specialist
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cardiology Specialist \t',
                  style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor),
                ),

                Icon(Icons.circle, size: 5, color: MColors.textSecondaryColor),

                Text(' 3 Years', style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
              ],
            ),
            //rattings
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4.w,
              children: [
                Icon(Icons.star, size: 14, color: Color(0XFFFFA740)),
                Icon(Icons.star, size: 14, color: Color(0XFFFFA740)),
                Icon(Icons.star, size: 14, color: Color(0XFFFFA740)),
                Icon(Icons.star, size: 14, color: Color(0XFFFFA740)),
                Icon(Icons.star_border, size: 14, color: Color(0XFFFFA740)),
                Text("12 Reviews", style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
              ],
            ),
            // SizedBox(height: 28.h),
          ],
        ),
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
      leading: Icon(Icons.arrow_back_ios, size: 24, color: MColors.textSecondaryColor),
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

class ProfileStack extends StatelessWidget {
  const ProfileStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleProfile(),
        Positioned(
          top: 73,
          left: 74,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Color(0xFF6E9024)),
          ),
        ),
      ],
    );
  }
}
