import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/features/history/screens/upcomming.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';
import '../../utils/constants/colors.dart';
import 'screens/completed.dart';

/// without screen util
/*  
  class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: MColors.base1Color,
              size: 24,
            ),
          ),
          title: Text(
            'History ',
            style: MTextTheme.semiBold.copyWith(fontSize: 16),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 28, right: 28),
          child: Column(
            children: [
              SegmentedTabControl(
                height: 48,
                indicatorPadding: EdgeInsets.all(4),
                barDecoration: BoxDecoration(
                  color: Color(0XFFF9F8FD),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 1, color: Color(0XFFE3E3E3)),
                ),
                indicatorDecoration: BoxDecoration(
                  //  Selected Tab color
                  color: MColors.primaryColor, // navy blue
                  borderRadius: BorderRadius.circular(6),
                ),
                tabTextColor:
                    MColors.textThirtyColor, // unselected tab text  color

                textStyle: MTextTheme.regular.copyWith(
                  color: MColors.textThirtyColor,
                ),

                selectedTextStyle: MTextTheme.semiBold.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                ),
                tabs: [
                  SegmentTab(label: 'Upcoming'),
                  SegmentTab(label: 'Completed'),
                ],
              ),
              SizedBox(height: 20),

              Expanded(
                child: TabBarView(
                  children: [
                    Upcomming(),
                    // Container(color: Colors.blueAccent),
                    Completed(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

/// with screen util

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new, color: MColors.base1Color, size: 20.sp),
          ),
          title: Text('History ', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
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
                  color: const Color(0XFFF9F8FD),
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(width: 1.w, color: const Color(0XFFE3E3E3)),
                ),
                indicatorDecoration: BoxDecoration(
                  //  Selected Tab color
                  color: MColors.primaryColor, // navy blue
                  borderRadius: BorderRadius.circular(6.r),
                ),
                tabTextColor: MColors.textThirtyColor, // unselected tab text  color

                textStyle: MTextTheme.regular.copyWith(color: MColors.textThirtyColor),

                selectedTextStyle: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: Colors.white),
                tabs: [
                  SegmentTab(label: 'Upcoming'),
                  SegmentTab(label: 'Completed'),
                ],
              ),
              SizedBox(height: 20.h),

              Expanded(
                child: TabBarView(
                  children: [
                    Upcomming(),
                    // Container(color: Colors.blueAccent),
                    Completed(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
