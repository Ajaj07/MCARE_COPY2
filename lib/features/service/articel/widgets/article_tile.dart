import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/theme/widget/text_theme_screen_util.dart';

///------------------[Without Screen Util]----------------------
/*
class ArticleTile extends StatelessWidget {
  const ArticleTile({super.key, required this.imageName});
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // image
            Container(
              width: 80,
              height: 60,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: MColors.secondaryColor,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: MColors.thirtyColor),
              ),
              child: Image.asset(imageName.trim(), width: double.infinity, height: double.infinity, fit: BoxFit.cover),
            ),
            SizedBox(width: 10),
            // Texts
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Adults', style: MTextTheme.labelMedium.copyWith(fontSize: 10, color: MColors.textThirtyColor)),
                  Text(
                    'Getting to know Hanta Virus Disease from Rodents',
                    style: MTextTheme.labelMedium.copyWith(color: Color(0XFF090909), height: 1.3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
///------------------[With Screen Util]----------------------
class ArticleTile extends StatelessWidget {
  const ArticleTile({super.key, required this.imageName});
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w), // ScreenUtil applied
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h), // ScreenUtil applied
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // image
            Container(
              width: 80.w, // ScreenUtil applied
              height: 60.h, // ScreenUtil applied
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: MColors.secondaryColor,
                borderRadius: BorderRadius.circular(6.r), // ScreenUtil applied
                border: Border.all(width: 1.w, color: MColors.thirtyColor), // ScreenUtil applied
              ),
              child: Image.asset(imageName.trim(), width: double.infinity, height: double.infinity, fit: BoxFit.cover),
            ),
            SizedBox(width: 10.w), // ScreenUtil applied
            // Texts
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adults',
                    style: MTextTheme.labelMedium.copyWith(
                      fontSize: 10.sp, // ScreenUtil applied
                      color: MColors.textThirtyColor,
                    ),
                  ),
                  Text(
                    'Getting to know Hanta Virus Disease from Rodents',
                    style: MTextTheme.labelMedium.copyWith(color: const Color(0XFF090909), height: 1.3),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
