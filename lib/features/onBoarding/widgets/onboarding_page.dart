import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key, required this.image, required this.title, required this.subTitle});

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 150.h, left: 10.w, right: 10.w),
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(height: 60.h),
          Text(
            title,
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600, color: const Color(0xFF0E0E0E)),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF4D4D4D),
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
