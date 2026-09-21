import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/common/routes/app_routes.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

class HistoryEmpty extends StatelessWidget {
  const HistoryEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white,
          leading: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () => Get.offAllNamed(AppRoutes.home),
            icon: Icon(Icons.chevron_left, color: MColors.textSecondaryColor),
          ),
          title: Text('History empty', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 28.w, right: 28.w),
          child: Column(
            children: [
              SizedBox(height: 15.h),

              SegmentedTabControl(
                height: 48.h,
                indicatorPadding: EdgeInsets.all(4.r),
                barDecoration: BoxDecoration(
                  color: const Color(0xFFF9F8FD),
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(width: 1.w, color: const Color(0xFFE3E3E3)),
                ),
                indicatorDecoration: BoxDecoration(
                  color: MColors.primaryColor,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                tabTextColor: MColors.textThirtyColor,
                textStyle: MTextTheme.regular.copyWith(color: MColors.textThirtyColor),
                selectedTextStyle: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: Colors.white),
                tabs: const [
                  SegmentTab(label: 'Upcoming'),
                  SegmentTab(label: 'Completed'),
                ],
              ),

              SizedBox(height: 20.h),

              Expanded(child: TabBarView(children: const [EmptyUpcoming(), EmptyCompleted()])),
            ],
          ),
        ),
      ),
    );
  }
}

class EmptyUpcoming extends StatelessWidget {
  const EmptyUpcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(flex: 1),
        SvgPicture.asset(
          'assets/icons/svg/empty_history_upcoming.svg',
          width: 160.w,
          height: 160.w,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 20.h),
        Text(
          'Next visit schedule',
          textAlign: TextAlign.center,
          style: MTextTheme.semiBold.copyWith(fontSize: 16.sp),
        ),
        SizedBox(height: 10.h),
        Text(
          "You don't have a future visit scheduled. "
          'Make an appointment with the doctor now.',
          textAlign: TextAlign.center,
          style: MTextTheme.labelMedium,
        ),
        Spacer(flex: 3),
      ],
    );
  }
}

class EmptyCompleted extends StatelessWidget {
  const EmptyCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(flex: 1),
        SvgPicture.asset(
          'assets/icons/svg/empty_history_completed.svg',
          width: 160.w,
          height: 160.w,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 20.h),
        Text(
          'You don\'t have any scedule yet',
          textAlign: TextAlign.center,
          style: MTextTheme.semiBold.copyWith(fontSize: 16.sp),
        ),
        SizedBox(height: 10.h),
        Text(
          'your\'re never  had a doctor\'s  appointment, do it now. ',
          textAlign: TextAlign.center,
          style: MTextTheme.labelMedium,
        ),
        Spacer(flex: 3),
      ],
    );
  }
}
