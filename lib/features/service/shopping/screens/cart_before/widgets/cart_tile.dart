import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme_screen_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../utils/constants/colors.dart';

///------------------------[Without screen util]---------------------
/*
class CartTile extends StatelessWidget {
  const CartTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 16),

      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 1, color: Color(0XFFE3E3E3)),
          bottom: BorderSide(width: 1, color: Color(0XFFE3E3E3)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(child: Image.asset('assets/images/emmy.png', width: 36, height: 36, fit: BoxFit.cover)),
          SizedBox(width: 10),
          Text('Delivery to Amy', style: MTextTheme.semiBold),
          Spacer(),
          Text('Milan, Italy ', style: MTextTheme.semiBold.copyWith(color: MColors.primaryColor)),
          Icon(Icons.keyboard_arrow_down_rounded, size: 16, color: MColors.primaryColor),
        ],
      ),
    );
  }
}
*/

///------------------------[With Screen Util]--------------------------

class CartTile extends StatelessWidget {
  const CartTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 1.w, color: const Color(0xFFE3E3E3)),
          bottom: BorderSide(width: 1.w, color: const Color(0xFFE3E3E3)),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset('assets/images/emmy.png', width: 36.w, height: 36.w, fit: BoxFit.cover),
          ),

          SizedBox(width: 10.w),

          Text('Delivery to Amy', style: MTextTheme.semiBold),

          const Spacer(),

          Text('Milan, Italy', style: MTextTheme.semiBold.copyWith(color: MColors.primaryColor)),

          SizedBox(width: 2.w),

          Icon(Icons.keyboard_arrow_down_rounded, size: 16.w, color: MColors.primaryColor),
        ],
      ),
    );
  }
}
