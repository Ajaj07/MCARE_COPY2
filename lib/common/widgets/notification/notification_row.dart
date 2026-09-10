import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/theme/widget/text_theme_screen_util.dart';

class NotificationRow extends StatefulWidget {
  NotificationRow({super.key});
  bool value = true;
  @override
  State<NotificationRow> createState() => _NotificationRowState();
}

class _NotificationRowState extends State<NotificationRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1.w, color: Color(0xFFE3E3E3)),
        boxShadow: [BoxShadow(color: Colors.black.withAlpha(120), offset: Offset(1.w, 1.h), blurRadius: 1.r)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // bell
          Padding(
            padding: EdgeInsets.only(left: 15.w, top: 10.h, bottom: 10.h),
            child: SvgPicture.asset('assets/icons/svg/solar_bell.svg', width: 24.r, height: 24.r, fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 18.5.h, bottom: 18.5.h),
            child: Text('Activate notifications', style: MTextTheme.labelMedium),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 14.h, bottom: 10.h, right: 19.w),
            child: FlutterSwitch(
              width: 40.w,
              height: 20.h,
              value: widget.value,
              activeColor: MColors.primaryColor,
              // toggleColor: ,
              inactiveColor: MColors.textSecondaryColor,
              onToggle: (value) {
                // value = !value;
                setState(() {
                  widget.value = !widget.value;
                  print(' new value ${widget.value}');
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Switch  was upgraded
class NotificationRow2 extends StatelessWidget {
  const NotificationRow2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1.w, color: Color(0xFFE3E3E3)),
        boxShadow: [BoxShadow(color: Colors.black.withAlpha(120), offset: Offset(1.w, 1.h), blurRadius: 1.r)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // bell
          Padding(
            padding: EdgeInsets.only(left: 15.w, top: 10.h, bottom: 10.h),
            child: SvgPicture.asset('assets/icons/svg/solar_bell.svg', width: 24.r, height: 24.r, fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 18.5.h, bottom: 18.5.h),
            child: Text('Activate notifications', style: MTextTheme.labelMedium),
          ),
          Spacer(),

          Transform.scale(
            scale: 0.75.r,
            child: Switch(
              thumbColor: WidgetStatePropertyAll(Color(0XFFFFFFFF)),
              // activeColor: MColors.primaryColor,
              activeTrackColor: MColors.primaryColor,
              value: true,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
