import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../common/widgets/Buttons/primary_button.dart';
import '../../../../utils/theme/widget/text_theme_screen_util.dart';

///-------------------[without Screen Util ] --------------------------
/*
class ArticelCard extends StatelessWidget {
  const ArticelCard({
    super.key,
    required this.imageName,
    required this.title,
    this.callback,
    required this.buttonTitle,
  });
  final String imageName, title, buttonTitle;
  final VoidCallbackAction? callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 180,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: MColors.thirtyColor, width: 1),
      ),
      child: Stack(
        children: [
          ClipRRect(
            child: Image.asset(imageName.trim(), width: double.infinity, height: double.infinity, fit: BoxFit.cover),
          ),
          Positioned.fill(child: Container(color: Colors.black.withAlpha(80))),
          Positioned(
            left: 16,
            bottom: 16,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title.trim(), style: MTextTheme.semiBold.copyWith(color: Colors.white)),
                SizedBox(height: 10),
                MPButton2(
                  label: buttonTitle,
                  buttonStyle: ButtonStyle(
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(6)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/
///-------------------[with Screen Util ] --------------------------

class ArticelCard extends StatelessWidget {
  const ArticelCard({
    super.key,
    required this.imageName,
    required this.title,
    this.callback,
    required this.buttonTitle,
  });
  final String imageName, title, buttonTitle;
  final VoidCallbackAction? callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w, // ScreenUtil applied
      height: 180.h, // ScreenUtil applied
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r), // ScreenUtil applied
        border: Border.all(color: MColors.thirtyColor, width: 1.w), // ScreenUtil applied
      ),
      child: Stack(
        children: [
          ClipRRect(
            child: Image.asset(imageName.trim(), width: double.infinity, height: double.infinity, fit: BoxFit.cover),
          ),
          Positioned.fill(child: Container(color: Colors.black.withAlpha(80))),
          Positioned(
            left: 16.w, // ScreenUtil applied
            bottom: 16.h, // ScreenUtil applied
            right: 20.w, // ScreenUtil applied
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title.trim(), style: MTextTheme.semiBold.copyWith(color: Colors.white)),
                SizedBox(height: 10.h), // ScreenUtil applied
                MPButton2(
                  label: buttonTitle,
                  buttonStyle: ButtonStyle(
                    shape: WidgetStatePropertyAll(
                      // ScreenUtil applied to BorderRadius
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
