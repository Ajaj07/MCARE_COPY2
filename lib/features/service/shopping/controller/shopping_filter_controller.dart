import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme_screen_util.dart';
import '../../../../common/widgets/Buttons/primary_button.dart';
import '../../../../utils/constants/colors.dart';

///------------------------[ without screen Util] -------------------------------

/*
class ShoppingFilterController extends GetxController {
  void showAddCard({required String image, required String medicineName, required String price}) {
    Get.bottomSheet(
      Container(
        height: 280,
        padding: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(36), topLeft: Radius.circular(36)),
          color: Colors.white,
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            //--------------------- custom Scroll Controller ------------------------------------
            Center(
              child: Container(
                width: 80,
                height: 4,
                decoration: BoxDecoration(color: Color(0xFFA6CFD5), borderRadius: BorderRadius.circular(4)),
              ),
            ),
            SizedBox(height: 30),
            //--------------------- medicine  information ---------------------------------------
            Container(
              height: 145,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0XFFE3E3E3)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  // medecine Image
                  SizedBox(
                    width: 140,
                    height: double.infinity,
                    child: Center(
                      // try to remove Center
                      child: Container(
                        width: 119,
                        height: 94,
                        // alignment: Alignment.center,
                        color: Colors.white,
                        child: Image.asset(image, fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 21),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              medicineName,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: MTextTheme.semiBold.copyWith(fontSize: 14),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text('Per Strip', style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Start from : ',
                                style: MTextTheme.bodyMedium.copyWith(fontSize: 10, color: MColors.textThirtyColor),
                              ),
                              Text(price, style: MTextTheme.bold),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 5,
                            children: [
                              Container(
                                width: 26,
                                height: 26,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: MColors.primaryColor, width: 1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Icon(Icons.remove, color: MColors.primaryColor, size: 15),
                              ),
                              Text("1"),
                              Container(
                                width: 26,
                                height: 26,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: MColors.primaryColor, width: 1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Icon(Icons.add, color: MColors.primaryColor, size: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),
            SizedBox(
              height: 51,
              width: double.infinity,
              child: MPButton2(label: 'Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
*/

class ShoppingFilterController extends GetxController {
  void showAddCard({required String image, required String medicineName, required String price}) {
    Get.bottomSheet(
      Container(
        height: 280.h,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(36.r), topLeft: Radius.circular(36.r)),
          color: Colors.white,
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12.h),
            //--------------------- custom Scroll Controller ------------------------------------
            Center(
              child: Container(
                width: 80.w,
                height: 4.h,
                decoration: BoxDecoration(color: const Color(0xFFA6CFD5), borderRadius: BorderRadius.circular(4.r)),
              ),
            ),
            SizedBox(height: 30.h),
            //--------------------- medicine  information ---------------------------------------
            Container(
              height: 145.h,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0XFFE3E3E3)),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                children: [
                  // medecine Image
                  SizedBox(
                    width: 140.w,
                    height: double.infinity,
                    child: Center(
                      // try to remove Center
                      child: Container(
                        width: 119.w,
                        height: 94.h,
                        // alignment: Alignment.center,
                        color: Colors.white,
                        child: Image.asset(image, fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 21.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              medicineName,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: MTextTheme.semiBold.copyWith(fontSize: 14.sp),
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text('Per Strip', style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Start from : ',
                                style: MTextTheme.bodyMedium.copyWith(fontSize: 10.sp, color: MColors.textThirtyColor),
                              ),
                              Text(price, style: MTextTheme.bold),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 5.w,
                            children: [
                              Container(
                                width: 26.w,
                                height: 26.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: MColors.primaryColor, width: 1),
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                                child: Icon(Icons.remove, color: MColors.primaryColor, size: 15.sp),
                              ),
                              Text("1"),
                              Container(
                                width: 26.w,
                                height: 26.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: MColors.primaryColor, width: 1),
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                                child: Icon(Icons.add, color: MColors.primaryColor, size: 15.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15.h),
            SizedBox(
              height: 51.h,
              width: double.infinity,
              child: MPButton2(label: 'Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
