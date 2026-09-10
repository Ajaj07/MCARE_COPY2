import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/features/service/medication_remainder/screens/medication_remainder/widgets/week_tile.dart';

///-------------------[Without Screen Util]-------------------------

/*
class WeekScrollCard extends StatelessWidget {
  const WeekScrollCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Weektile(dayName: 'Wed', date: 22),
          SizedBox(width: 7),
          Weektile(dayName: 'Thu', date: 23),
          SizedBox(width: 7),
          Weektile(dayName: 'Fri', date: 24),
          SizedBox(width: 7),
          Weektile(dayName: 'Sat', date: 25),
          SizedBox(width: 7),
          Weektile(dayName: 'Sun', date: 26),
          SizedBox(width: 7),
          Weektile(dayName: 'Mon', date: 27),
          SizedBox(width: 7),
          Weektile(dayName: 'Tue', date: 28),
        ],
      ),
    );
  }
}
*/

///-------------------[Wit Screen Util]-------------------------
class WeekScrollCard extends StatelessWidget {
  const WeekScrollCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Weektile(dayName: 'Wed', date: 22),
          SizedBox(width: 7.w),
          Weektile(dayName: 'Thu', date: 23),
          SizedBox(width: 7.w),
          Weektile(dayName: 'Fri', date: 24),
          SizedBox(width: 7.w),
          Weektile(dayName: 'Sat', date: 25),
          SizedBox(width: 7.w),
          Weektile(dayName: 'Sun', date: 26),
          SizedBox(width: 7.w),
          Weektile(dayName: 'Mon', date: 27),
          SizedBox(width: 7.w),
          Weektile(dayName: 'Tue', date: 28),
        ],
      ),
    );
  }
}
