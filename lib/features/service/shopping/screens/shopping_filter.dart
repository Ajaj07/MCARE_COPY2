import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/features/service/shopping/data/medicine_card_data.dart';
import 'package:mcare_copy2/features/service/shopping/widgets/button_row.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/Buttons/appbar_button.dart';
import '../../../../common/widgets/searchBar/search_bar.dart';
import '../../../../utils/constants/colors.dart';
import '../controller/shopping_filter_controller.dart';

class ShoppingFilter extends StatelessWidget {
  ShoppingFilter({super.key});
  final controller = Get.put(ShoppingFilterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // titleSpacing: 12.w,
        toolbarHeight: 66.h,
        titleSpacing: 0,
        leading: AppbarButton(
          icon: Icons.chevron_left,
          color: MColors.iconColor1,
          // size: 30,
          onPressed: () => Get.back(),
        ),
        title: SizedBox(height: 48, child: CustomSearchBar()),
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: SvgPicture.asset('assets/icons/svg/cart_outline.svg', height: 24.sp, width: 24.sp),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 26.w, top: 15.h, bottom: 15.h),
              child: ButtonRow(
                childList: [
                  Icon(
                    Icons.tune,
                    size: 20.w,
                    //  color: Colors.black
                  ),
                  Text(
                    'Medicine & Treatment',
                    //  style: MTextTheme.labelMedium
                  ),
                  Text(
                    'Milk',
                    // style: MTextTheme.labelMedium
                  ),
                  Text(
                    'Sexual Health',
                    //  style: MTextTheme.labelMedium
                  ),
                  Text('Sexual Health'),
                ],
              ),
            ),
            Expanded(
              // Added padding to align the grid with your left-aligned ButtonRow
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: MedicineCardData.medicineCard.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Displays 2 items per row
                    // ⬇️ CUSTOMIZE VERTICAL SPACE (Spacing between rows)
                    mainAxisSpacing: 15.h,

                    // ⬇️ CUSTOMIZE HORIZONTAL SPACE (Spacing between columns)
                    crossAxisSpacing: 15.w,

                    // ⬇️ CUSTOMIZE ITEM SHAPE (Width / Height ratio)
                    // Since your card is roughly 178w and 248h, we use that exact ratio
                    // to prevent Flutter from forcing the cards into perfect squares.
                    childAspectRatio: 178 / 248,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        final item = MedicineCardData.medicineCard[index];
                        controller.showAddCard(
                          image: item.imageName,
                          medicineName: item.medicineName,
                          price: item.price,
                        );
                      },
                      child: MedicineCardData.medicineCard[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
