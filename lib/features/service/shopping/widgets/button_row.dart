import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../utils/constants/colors.dart';

///-----------------------------[Without Screen Util]------------------------
/*
class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, this.childList = const [Text('ajajali'), Text('2'), Text('3')]});
  // final Widget childWidget;
  final List<Widget?> childList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return button(index);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10);
        },
        itemCount: childList.length,
      ),
    );
  }

  Container button(int i) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Color(0XFFE3E3E3), width: 1),
      ),
      child: childList[i],
    );
  }
}
*/
///-----------------------------[WithScreen Util]------------------------
/*
class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, this.childList = const [Text('ajajali'), Text('2'), Text('3')]});
  // final Widget childWidget;
  final List<Widget?> childList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return button(index);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10.w);
        },
        itemCount: childList.length,
      ),
    );
  }

  Container button(int i) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: Color(0XFFE3E3E3), width: 1),
      ),
      child: childList[i],
    );
  }
}
*/
/*

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, this.childList = const [Text('ajajali'), Text('2'), Text('3')]});

  final List<Widget> childList; // ✅ non-nullable

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => button(index),
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10.w),
        itemCount: childList.length,
      ),
    );
  }

  Widget button(int i) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h), // ⬅️ reduced so 40.h has headroom
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: const Color(0XFFE3E3E3), width: 1), // hairline — intentionally NOT scaled
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown, // ⬅️ shrinks content instead of overflowing if it's ever too tall/wide
        child: childList[i],
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:your_app/utils/constants/colors.dart';

class ButtonRow extends StatefulWidget {
  const ButtonRow({super.key, this.childList = const [Text('ajajali'), Text('2'), Text('3')]});

  final List<Widget> childList;

  @override
  State<ButtonRow> createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  // 1. Nullable integer means nothing is selected initially
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => button(index),
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10.w),
        itemCount: widget.childList.length,
      ),
    );
  }

  Widget button(int i) {
    bool isSelected = _selectedIndex == i;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = i;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: isSelected
              ? Border.all(color: MColors.primaryColor, width: 2)
              : Border.all(color: const Color(0XFFE3E3E3), width: 1),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          // 2. Wrap in IconTheme.merge for Icons
          child: IconTheme.merge(
            data: IconThemeData(color: isSelected ? MColors.primaryColor : null),
            // 3. Wrap in DefaultTextStyle.merge for Text
            child: DefaultTextStyle.merge(
              style: MTextTheme.labelMedium.copyWith(color: isSelected ? MColors.primaryColor : null),
              // style: TextStyle(color: isSelected ? MColors.primaryColor : null),
              child: widget.childList[i],
            ),
          ),
        ),
      ),
    );
  }
}
