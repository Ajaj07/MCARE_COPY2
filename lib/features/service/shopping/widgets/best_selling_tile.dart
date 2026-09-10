import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/theme/widget/text_theme_screen_util.dart';

///-----------------------------[ Direct  Screen Util]------------------------
class BestSellingTile extends StatelessWidget {
  const BestSellingTile({super.key, required this.imageName, required this.name});
  final String imageName, name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178.w,
      height: 178.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0XFFE3E3E3)),
        image: DecorationImage(image: AssetImage(imageName.trim()), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color.fromARGB(59, 255, 255, 255), const Color.fromARGB(85, 0, 0, 0)],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 13.h,
            left: 0,
            right: 0,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: MTextTheme.labelLarge.copyWith(fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }
}
