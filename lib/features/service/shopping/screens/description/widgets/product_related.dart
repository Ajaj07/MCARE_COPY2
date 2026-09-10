import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/theme/widget/text_theme_screen_util.dart';
// import '../../../../../../../utils/theme/widget/text_theme.dart';

///---------------------[Without Screen Util]------------------------------------
/*
class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 23),
      alignment: Alignment.center,
      child: Image.asset('assets/images/shoppings/medicine_4.png', width: 233, height: 185),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bufect Strip of 4 Tablets -Heat and Pain Relief Medicine',
          style: MTextTheme.bold.copyWith(color: Color(0XFF090909), height: 1.5),
        ),
        SizedBox(height: 15),
        Text('Per Strip', style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
        SizedBox(height: 20),
        Text('Start form', style: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor)),
        SizedBox(height: 7),
        Text('\$2,00', style: MTextTheme.bold.copyWith(fontSize: 20)),
      ],
    );
  }
}
*/

///---------------------[With Screen Util]----------------------------------------

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240.h,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 70.w, vertical: 23.h),
      alignment: Alignment.center,
      child: Image.asset('assets/images/shoppings/medicine_4.png', width: 233.w, height: 185.h),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bufect Strip of 4 Tablets -Heat and Pain Relief Medicine',
          style: MTextTheme.bold.copyWith(color: Color(0XFF090909), height: 1.5),
        ),
        SizedBox(height: 15.h),
        Text('Per Strip', style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
        SizedBox(height: 20.h),
        Text('Start form', style: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor)),
        SizedBox(height: 7.h),
        Text('\$2,00', style: MTextTheme.bold.copyWith(fontSize: 20.sp)),
      ],
    );
  }
}
