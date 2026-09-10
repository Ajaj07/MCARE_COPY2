import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/features/profile/screens/notifications/empty_notification.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:flutter/services.dart';
import '../../../../utils/theme/widget/text_theme_screen_util.dart';

///------------[Direct Screen util ]------------------------------------
class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
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
          'Notifications',
          style: MTextTheme.semiBold.copyWith(fontSize: 16.sp), // Made text size responsive using .sp
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EmptyNotification()));
                },
                child: NotificationTile(
                  svgImage: 'assets/icons/svg/alert_notification_filled.svg',
                  title: 'Doctor Appointment Reminder',
                  subTitle:
                      r''' Hi [User 's Name ] , this is a reminder for your consultation appointment with Dr. [Doctor's Name] tomorrow at 10:00 AM. Please make sure you arrive on time''',
                ),
              ),
              SizedBox(height: 16.h),
              NotificationTile(
                iconColor: Color(0XFF7266D7),
                svgImage: 'assets/icons/svg/alert_notification_filled.svg',
                title: 'New Medical Record Notification',
                subTitle:
                    r''' Hello [User's Name], you have a new medical record added to your profile. Please check for the latest information about your health condition.''',
              ),
              SizedBox(height: 16.h),
              NotificationTile(
                iconColor: MColors.secondaryColor,
                svgImage: 'assets/icons/svg/hand_fill.svg',
                title: 'Medication Pickup Reminder',
                subTitle:
                    r'''   Good morning [User's Name], don't forget to pick up your daily dose of medication, Paracetamol 500mg, today. Make sure you take it as directed by your doctor.''',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  NotificationTile({
    super.key,
    required this.svgImage,
    required this.title,
    required this.subTitle,
    this.iconColor = MColors.primaryColor,
  });
  final String svgImage, title, subTitle;
  Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 32.h, bottom: 32.h, left: 24.w, right: 16.w),
      decoration: BoxDecoration(
        color: Color(0XFF090909),
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(width: 1, color: Color(0XFF121212)),
      ),
      child: Row(
        children: [
          //icon
          Container(
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(shape: BoxShape.circle, color: iconColor),
            child: Center(
              child: SvgPicture.asset(svgImage.trim(), width: 24.w, height: 24.h),
            ),
          ),
          // row
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.trim(),
                  overflow: TextOverflow.ellipsis,
                  style: MTextTheme.semiBold.copyWith(fontSize: 16, color: Colors.white),
                ),
                SizedBox(height: 5.h),

                Text(
                  subTitle.trim(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor, height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
