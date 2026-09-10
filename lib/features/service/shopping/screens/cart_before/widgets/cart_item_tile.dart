import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme_screen_util.dart';
import 'package:mcare_copy2/features/service/shopping/widgets/medicine_card.dart';
import '../../../../../../utils/constants/colors.dart';

class CartItemTile extends StatelessWidget {
  const CartItemTile({super.key, required this.item, required this.index});

  final List<MedicineCard> item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0xFFE3E3E3), width: 1.w),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ---------------- Image ----------------
          Image.asset(item[index].imageName, width: 72.w, height: 72.w, fit: BoxFit.cover),

          SizedBox(width: 10.w),

          // ---------------- Details ----------------
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ---------------- Medicine Name ----------------
                Text(
                  item[index].medicineName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: MTextTheme.semiBold.copyWith(fontSize: 14.sp),
                ),

                SizedBox(height: 5.h),

                // ---------------- Per Strip ----------------
                Text('Per Strip', style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),

                SizedBox(height: 4.h),

                // ---------------- Price + Quantity ----------------
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Price
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Start from : ',
                            style: MTextTheme.bodyMedium.copyWith(fontSize: 10.sp, color: MColors.textThirtyColor),
                          ),
                          Flexible(
                            child: Text(item[index].price, overflow: TextOverflow.ellipsis, style: MTextTheme.bold),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 6.w),

                    // Quantity Controls
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _QuantityButton(icon: Icons.remove),

                        SizedBox(width: 5.w),

                        Text('1', style: MTextTheme.bodyMedium),

                        SizedBox(width: 5.w),

                        _QuantityButton(icon: Icons.add),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  const _QuantityButton({required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 26.w,
      height: 26.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: MColors.primaryColor, width: 1.w),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Icon(icon, color: MColors.primaryColor, size: 15.w),
    );
  }
}
