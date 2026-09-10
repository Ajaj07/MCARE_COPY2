import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/features/service/shopping/widgets/medicine_card.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';
import 'package:flutter/services.dart';

import '../../../utils/theme/widget/text_theme_screen_util.dart';
import 'widgets/best_selling_tile.dart';
import 'widgets/button_row.dart';
import 'widgets/product.dart';

///-----------------------------[Without Screen Util]------------------------
/*
class Shopping extends StatelessWidget {
  Shopping({super.key});
  static const List<Product> productList = [
    Product(imageName: 'assets/images/shoppings/kalbe.png'),
    Product(imageName: 'assets/images/shoppings/kimia_farma.png'),
    Product(imageName: 'assets/images/shoppings/dexaj.png'),
  ];

  final List<MedicineCard> medicineCard = [
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),
  ];

  final List<BestSellingTile> bestSellingTile = [
    BestSellingTile(imageName: 'assets/images/vacine.png', name: 'Vaccine'),
    BestSellingTile(imageName: 'assets/images/braces.png', name: 'braces'),
    BestSellingTile(imageName: 'assets/images/whilechair.jpg', name: 'whilechair'),
    BestSellingTile(imageName: 'assets/images/mask.jpg', name: 'mask'),
    BestSellingTile(imageName: 'assets/images/vacine.png', name: 'Vaccine'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16.0, // Adjust this if the whole row needs to move left/right
        toolbarHeight: 48.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              padding: EdgeInsets.zero, // Removes default padding
              constraints: const BoxConstraints(), // Removes default 48x48 minimum size
              onPressed: () {},
              // Note: Icons.arrow_back_ios_new looks closer to your Figma design and centers better than arrow_back_ios
              icon: Icon(Icons.arrow_back_ios_new, size: 24, color: MColors.textSecondaryColor),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Container(
                height: 48.0,
                decoration: BoxDecoration(
                  color: Color(0XFFF9F9F9),
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: MColors.thirtyColor),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    // prefixIcon: SvgPicture.asset('assets/icons/svg/search_outline.svg', height: 24),
                    // Wrap in padding to give the icon breathing room inside the field
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: SvgPicture.asset(
                        'assets/icons/svg/search_outline.svg',
                        height: 20, // Explicitly set to 20px based on Figma
                        width: 20,
                      ),
                    ),
                    // Crucial: Forces the prefixIcon to wrap tightly around the 20px icon + padding
                    prefixIconConstraints: const BoxConstraints(minWidth: 44, minHeight: 20),
                    hintText: 'Search product or store',
                    hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                  ),
                ),
              ),
            ),
            SizedBox(width: 15),
            IconButton(
              onPressed: () {},
              constraints: const BoxConstraints(), // Removes default minimum size
              icon: SvgPicture.asset(
                'assets/icons/svg/cart_outline.svg',
                height: 24, // Explicitly set to 24px based on Figma
                width: 24,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///---------------------------------[Buttons horizonatal row]--------------------------------------------
              Padding(
                padding: const EdgeInsets.only(left: 26, top: 15, bottom: 15),
                child: ButtonRow(
                  childList: [
                    Icon(Icons.tune, size: 20, color: Colors.black),
                    Text('Medicine & Treatment', style: MTextTheme.labelMedium),
                    Text('Milk', style: MTextTheme.labelMedium),
                    Text('Sexual Health', style: MTextTheme.labelMedium),
                    Text('Sexual Health'),
                  ],
                ),
              ),

              ///---------------------------------[Oficial Store]--------------------------------------------
              Container(
                padding: EdgeInsets.only(left: 26, top: 20, bottom: 20),
                color: MColors.thirtyColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Official Store', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                        Spacer(),
                        Text('See all', style: MTextTheme.labelMedium.copyWith(color: MColors.primaryColor)),
                        SizedBox(width: 26),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Special offers from various renowned brands',
                      style: MTextTheme.labelMedium.copyWith(color: Color(0XFF090909)),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 140,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => productList[index],
                        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10),
                        itemCount: productList.length,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              ///---------------------------------[Hot Sales]--------------------------------------------
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hot Sales', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                    Text('See all', style: MTextTheme.labelMedium.copyWith(color: MColors.primaryColor)),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 26),
                child: SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemCount: medicineCard.length,
                    itemBuilder: (context, index) {
                      return medicineCard[index];
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              SizedBox(height: 15),

              ///---------------------------------[Recently viewd]--------------------------------------------
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recently Viewed', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                    Text('See all', style: MTextTheme.labelMedium.copyWith(color: MColors.primaryColor)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: SizedBox(
                  height: 248,
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemCount: medicineCard.length,
                    itemBuilder: (context, index) {
                      return medicineCard[index];
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              SizedBox(height: 15),

              ///---------------------------------[Layanan Kesehatan]--------------------------------------------
              Padding(
                padding: EdgeInsets.only(left: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Layanan Kesehatan', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                    // Text('See all', style: MTextTheme.labelMedium.copyWith(color: MColors.primaryColor)),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 26),
                height: 178,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: bestSellingTile.length,
                  separatorBuilder: (context, index) => SizedBox(width: 7),
                  itemBuilder: (context, index) {
                    return bestSellingTile[index];
                  },
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
*/

class Shopping extends StatelessWidget {
  Shopping({super.key});
  static const List<Product> productList = [
    Product(imageName: 'assets/images/shoppings/kalbe.png'),
    Product(imageName: 'assets/images/shoppings/kimia_farma.png'),
    Product(imageName: 'assets/images/shoppings/dexaj.png'),
  ];

  final List<MedicineCard> medicineCard = [
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),

    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_1.png',
      medicineName: 'Promag 10 Tablets',
      price: '\$4,00',
    ),
    MedicineCard(
      imageName: 'assets/images/shoppings/medicine_2.png',
      medicineName: 'STRIP NEURODEX 10 Tablets',
      price: '\$4,00',
    ),
  ];

  final List<BestSellingTile> bestSellingTile = [
    BestSellingTile(imageName: 'assets/images/vacine.png', name: 'Vaccine'),
    BestSellingTile(imageName: 'assets/images/braces.png', name: 'braces'),
    BestSellingTile(imageName: 'assets/images/whilechair.jpg', name: 'whilechair'),
    BestSellingTile(imageName: 'assets/images/mask.jpg', name: 'mask'),
    BestSellingTile(imageName: 'assets/images/vacine.png', name: 'Vaccine'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 12.w,
        toolbarHeight: 66.h,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: Padding(
          padding: EdgeInsets.only(right: 16.w, top: 15.h), // <-- balances titleSpacing on the right
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new, size: 24.sp, color: MColors.textSecondaryColor),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFF9F9F9),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: MColors.thirtyColor),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: SvgPicture.asset('assets/icons/svg/search_outline.svg', height: 20.sp, width: 20.sp),
                      ),
                      prefixIconConstraints: BoxConstraints(minWidth: 44.w, minHeight: 20.h),
                      hintText: 'Search product or store',
                      hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: SvgPicture.asset('assets/icons/svg/cart_outline.svg', height: 24.sp, width: 24.sp),
              ),
            ],
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///---------------------------------[Buttons horizonatal row]--------------------------------------------
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

              ///---------------------------------[Oficial Store]--------------------------------------------
              Container(
                padding: EdgeInsets.only(left: 26.w, top: 20.h, bottom: 20.h),
                color: MColors.thirtyColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Official Store', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
                        Spacer(),
                        Text('See all', style: MTextTheme.labelMedium.copyWith(color: MColors.primaryColor)),
                        SizedBox(width: 26.w),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Special offers from various renowned brands',
                      style: MTextTheme.labelMedium.copyWith(color: Color(0XFF090909)),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 140.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => productList[index],
                        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10.w),
                        itemCount: productList.length,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              ///---------------------------------[Hot Sales]--------------------------------------------
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hot Sales', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
                    Text('See all', style: MTextTheme.labelMedium.copyWith(color: MColors.primaryColor)),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.only(left: 26.w),
                child: SizedBox(
                  height: 248.h,
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10.w),
                    itemCount: medicineCard.length,
                    itemBuilder: (context, index) {
                      return medicineCard[index];
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              SizedBox(height: 15.h),

              ///---------------------------------[Recently viewd]--------------------------------------------
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recently Viewed', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
                    Text('See all', style: MTextTheme.labelMedium.copyWith(color: MColors.primaryColor)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                child: SizedBox(
                  height: 248.h,
                  width: double.infinity,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10.w),
                    itemCount: medicineCard.length,
                    itemBuilder: (context, index) {
                      return medicineCard[index];
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              SizedBox(height: 15.h),

              ///---------------------------------[Layanan Kesehatan]--------------------------------------------
              Padding(
                padding: EdgeInsets.only(left: 26.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Layanan Kesehatan', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
                    // Text('See all', style: MTextTheme.labelMedium.copyWith(color: MColors.primaryColor)),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.only(left: 26.w),
                height: 178.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: bestSellingTile.length,
                  separatorBuilder: (context, index) => SizedBox(width: 7.w),
                  itemBuilder: (context, index) {
                    return bestSellingTile[index];
                  },
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
