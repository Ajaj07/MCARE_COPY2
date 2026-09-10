import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../utils/constants/colors.dart';

///-------------------[without Screen Util ] --------------------------
/*
class TopicCard extends StatelessWidget {
  const TopicCard({super.key, required this.imageName, required this.title});
  final String imageName, title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 80,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: MColors.thirtyColor, width: 1),
      ),
      child: Stack(
        children: [
          ClipRRect(
            child: Image.asset(imageName.trim(), width: double.infinity, height: double.infinity, fit: BoxFit.cover),
          ),
          Positioned.fill(child: Container(color: Colors.black.withAlpha(80))),
          Align(
            alignment: Alignment(00, 00),
            child: Text(title, style: MTextTheme.semiBold.copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
*/
///-------------------[with  Screen Util ] --------------------------
class TopicCard extends StatelessWidget {
  const TopicCard({super.key, required this.imageName, required this.title});
  final String imageName, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w, // ScreenUtil applied
      height: 80.h, // ScreenUtil applied
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r), // ScreenUtil applied
        border: Border.all(color: MColors.thirtyColor, width: 1.w), // ScreenUtil applied
      ),
      child: Stack(
        children: [
          ClipRRect(
            child: Image.asset(imageName.trim(), width: double.infinity, height: double.infinity, fit: BoxFit.cover),
          ),
          Positioned.fill(child: Container(color: Colors.black.withAlpha(80))),
          Align(
            alignment: const Alignment(0, 0),
            child: Text(title, style: MTextTheme.semiBold.copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
