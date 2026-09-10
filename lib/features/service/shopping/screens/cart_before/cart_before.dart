import 'package:flutter/material.dart';
import 'package:mcare_copy2/common/widgets/Buttons/primary_button.dart';
import 'package:mcare_copy2/features/service/shopping/screens/cart_before/widgets/cart_tile.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/features/service/shopping/data/medicine_card_data.dart';
import '../../../../../utils/theme/widget/text_theme_screen_util.dart';
import 'widgets/cart_item_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // 1. Added import

///--------------------[Without screen util ]----------------------
/*
class CartBefore extends StatelessWidget {
  const CartBefore({super.key});

  @override
  Widget build(BuildContext context) {
    final item = MedicineCardData.medicineCard;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          alignment: Alignment.center,
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: MColors.textSecondaryColor, size: 20),
        ),
        title: Text("Cart", style: MTextTheme.semiBold.copyWith(fontSize: 16)),
        centerTitle: true,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //--------------------Tile------------------
                  CartTile(),
                  SizedBox(height: 20),
                  //-------------------- Cart Items--------------
                  CartItemTile(item: item, index: 0),
                  SizedBox(height: 15),
                  CartItemTile(item: item, index: 1),
                  SizedBox(height: 15),
                  CartItemTile(item: item, index: 2),
                  SizedBox(height: 30),
                  Text(
                    'Have a coupon code? enter here',
                    style: MTextTheme.labelMedium.copyWith(color: Color(0XFF090909)),
                  ),
                  SizedBox(height: 14),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: MColors.thirtyColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('2024CODE', style: MTextTheme.bold.copyWith(color: Color(0XFF090909))),
                        Spacer(),
                        Text('Available', style: MTextTheme.semiBold.copyWith(color: MColors.primaryColor)),
                        SizedBox(width: 6),
                        Icon(Icons.check_circle, color: MColors.primaryColor),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: 26,
            right: 26,
            bottom: 35,
            child: SizedBox(height: 51, child: MPButton2(label: 'Add')),
          ),
        ],
      ),
    );
  }
}
*/
///--------------------[With Screen Util ]----------------------
class CartBefore extends StatelessWidget {
  const CartBefore({super.key});

  @override
  Widget build(BuildContext context) {
    final item = MedicineCardData.medicineCard;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          alignment: Alignment.center,
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: MColors.textSecondaryColor,
            size: 20.r, // Scaled icon size
          ),
        ),
        title: Text(
          "Cart",
          style: MTextTheme.semiBold.copyWith(fontSize: 16.sp), // Scaled font size
        ),
        centerTitle: true,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w), // Scaled horizontal padding
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //--------------------Tile------------------
                  const CartTile(),
                  SizedBox(height: 20.h), // Scaled spacing height
                  //-------------------- Cart Items--------------
                  CartItemTile(item: item, index: 0),
                  SizedBox(height: 15.h),
                  CartItemTile(item: item, index: 1),
                  SizedBox(height: 15.h),
                  CartItemTile(item: item, index: 2),
                  SizedBox(height: 30.h),

                  Text(
                    'Have a coupon code? enter here',
                    style: MTextTheme.labelMedium.copyWith(
                      fontSize: 14.sp, // Explicitly scaled or scaled inside theme
                      color: const Color(0XFF090909),
                    ),
                  ),
                  SizedBox(height: 14.h),

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h), // Scaled container padding
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r), // Scaled border radius
                      border: Border.all(color: MColors.thirtyColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '2024CODE',
                          style: MTextTheme.bold.copyWith(
                            fontSize: 14.sp, // Scaled font size
                            color: const Color(0XFF090909),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Available',
                          style: MTextTheme.semiBold.copyWith(
                            fontSize: 14.sp, // Scaled font size
                            color: MColors.primaryColor,
                          ),
                        ),
                        SizedBox(width: 6.w),
                        Icon(
                          Icons.check_circle,
                          color: MColors.primaryColor,
                          size: 24.r, // Scaled icon size
                        ),
                      ],
                    ),
                  ),
                  // Added extra bottom padding so scroll content doesn't get hidden behind fixed button
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ),
          Positioned(
            left: 26.w, // Scaled positioning
            right: 26.w, // Scaled positioning
            bottom: 35.h, // Scaled positioning
            child: SizedBox(
              height: 51.h, // Scaled button height
              child: const MPButton2(label: 'Add'),
            ),
          ),
        ],
      ),
    );
  }
}
