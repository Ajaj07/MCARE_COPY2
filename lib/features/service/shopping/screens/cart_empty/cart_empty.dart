import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../cart_before/widgets/cart_tile.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          alignment: Alignment.center,
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: MColors.textSecondaryColor, size: 20.r),
        ),
        title: Text("Cart", style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CartTile(),
            Expanded(
              child: Column(
                children: [
                  const Spacer(flex: 1),
                  SizedBox(
                    width: 160.w,
                    height: 160.h,
                    child: SvgPicture.asset('assets/icons/svg/empty_cart.svg', fit: BoxFit.contain),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Oops! Your shopping cart is still empty',
                    style: MTextTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(flex: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
