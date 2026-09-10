import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/colors.dart';

///-----------------------------[Without Screen Util]------------------------
/*
class Product extends StatelessWidget {
  const Product({super.key, required this.imageName});
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: MColors.textThirtyColor),
      child: Container(
        width: 104,
        height: 104,
        padding: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Colors.white),
        child: Image.asset(imageName.trim(), fit: BoxFit.contain),
      ),
    );
  }
}
*/

class Product extends StatelessWidget {
  const Product({super.key, required this.imageName});
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      height: 140.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: MColors.textThirtyColor),
      child: Container(
        width: 104.w,
        height: 104.h,
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        alignment: Alignment.center,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.r), color: Colors.white),
        child: Image.asset(imageName.trim(), fit: BoxFit.contain),
      ),
    );
  }
}
