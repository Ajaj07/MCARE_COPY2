import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/features/service/shopping/widgets/medicine_card.dart';

import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../../common/widgets/Buttons/primary_button.dart';
import '../../../../../common/widgets/review/review.dart';
import '../../../../../utils/constants/colors.dart';
import 'widgets/all_descriptive_widget.dart';
import 'widgets/product_related.dart';

///---------------------[Without Screen Util]------------------------------------
/*
class DescriptionMedicine extends StatelessWidget {
  DescriptionMedicine({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new, size: 20.sp, color: MColors.textSecondaryColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: SvgPicture.asset(
              'assets/icons/svg/share_icon.svg',
              height: 20.8.sp,
              width: 20.8.sp,
              colorFilter: const ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///-----------------------------[Section With Padding]-----------------------------
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        // product Image
                        ProductImage(),
                        // Product Details
                        SizedBox(height: 20),
                        // productDetails(),
                        ProductDetails(),
                        SizedBox(height: 20),
                        // Divider
                        Divider(color: Color(0XFFE3E3E3), thickness: 2),
                        SizedBox(height: 20),
                        //Product Description
                        ProductDescription(),
                        SizedBox(height: 20),

                        //Benefits
                        ProductBenefits(),
                        SizedBox(height: 20),
                        //Composition
                        ProductComposition(),
                        SizedBox(height: 20),
                        //Dosage
                        ProductDosage(),
                        SizedBox(height: 20),
                        // storage instruction half
                        StorageInstructionHalf(),
                        SizedBox(height: 20),
                        // storage instruction full
                        StorageInstructionFull(),
                        SizedBox(height: 20),

                        // special Precautions
                        SpecialPrecautions(),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  ///-----------------------------[Section Without  right Padding]-----------------------------
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///---------------------------[Review Section]---------------------------------------------
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26),
                        child: Text('Review', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                      ),
                      SizedBox(height: 7),

                      // horizontal list view or review card
                      Padding(
                        padding: EdgeInsets.only(left: 26),
                        child: SizedBox(
                          height: 200.h,
                          width: double.infinity,
                          child: ListView.separated(
                            padding: EdgeInsets.all(8),
                            clipBehavior: Clip.antiAlias,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return MReviewCard(
                                name: 'Emily Johnson',
                                avatarAsset: 'assets/images/chat/doc_details1.jpg',
                                daysAgo: '1 day ago',
                                rating: 4.0,
                                reviewText:
                                    "My consultation with Dr. Luca Rossi was excellent. He's knowledgeable, attentive, and provid...",
                                onMoreViewTap: () => print('open full review'),
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(width: 20),
                            itemCount: 3,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26),
                        child: Text('Related Products', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                      ),
                      SizedBox(height: 7),

                      Padding(
                        padding: EdgeInsets.only(left: 26.w),
                        child: SizedBox(
                          height: 248.h,
                          width: double.infinity,
                          child: ListView.separated(
                            clipBehavior: Clip.none,
                            separatorBuilder: (context, index) => SizedBox(width: 10.w),
                            itemCount: medicineCard.length,
                            itemBuilder: (context, index) {
                              return medicineCard[index];
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),

            Positioned(
              left: 24,
              right: 24,
              bottom: 20,
              child: SizedBox(height: 45, child: MPButton2(label: 'Add to Cart')),
            ),
          ],
        ),
      ),
    );
  }
}
*/

///---------------------[With  Screen Util]------------------------------------
class DescriptionMedicine extends StatelessWidget {
  DescriptionMedicine({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new, size: 20.sp, color: MColors.textSecondaryColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: SvgPicture.asset(
              'assets/icons/svg/share_icon.svg',
              height: 20.8.sp,
              width: 20.8.sp,
              colorFilter: const ColorFilter.mode(MColors.textSecondaryColor, BlendMode.srcIn),
            ),
          ),
          SizedBox(width: 16.w),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///-----------------------------[Section With Padding]-----------------------------
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.h),
                        // product Image
                        ProductImage(),
                        // Product Details
                        SizedBox(height: 20.h),
                        // productDetails(),
                        ProductDetails(),
                        SizedBox(height: 20.h),
                        // Divider
                        Divider(color: Color(0XFFE3E3E3), thickness: 2),
                        SizedBox(height: 20.h),
                        //Product Description
                        ProductDescription(),
                        SizedBox(height: 20.h),

                        //Benefits
                        ProductBenefits(),
                        SizedBox(height: 20.h),
                        //Composition
                        ProductComposition(),
                        SizedBox(height: 20.h),
                        //Dosage
                        ProductDosage(),
                        SizedBox(height: 20.h),
                        // storage instruction half
                        StorageInstructionHalf(),
                        SizedBox(height: 20.h),
                        // storage instruction full
                        StorageInstructionFull(),
                        SizedBox(height: 20.h),

                        // special Precautions
                        SpecialPrecautions(),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),

                  ///-----------------------------[Section Without  right Padding]-----------------------------
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///---------------------------[Review Section]---------------------------------------------
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.w),
                        child: Text('Review', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
                      ),
                      SizedBox(height: 7.h),

                      // horizontal list view or review card
                      Padding(
                        padding: EdgeInsets.only(left: 26.w),
                        child: SizedBox(
                          height: 200.h,
                          width: double.infinity,
                          child: ListView.separated(
                            padding: EdgeInsets.all(8.w),
                            clipBehavior: Clip.antiAlias,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return MReviewCard(
                                name: 'Emily Johnson',
                                avatarAsset: 'assets/images/chat/doc_details1.jpg',
                                daysAgo: '1 day ago',
                                rating: 4.0,
                                reviewText:
                                    "My consultation with Dr. Luca Rossi was excellent. He's knowledgeable, attentive, and provid...",
                                onMoreViewTap: () => print('open full review'),
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(width: 20.w),
                            itemCount: 3,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.w),
                        child: Text('Related Products', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
                      ),
                      SizedBox(height: 7.h),

                      Padding(
                        padding: EdgeInsets.only(left: 26.w),
                        child: SizedBox(
                          height: 248.h,
                          width: double.infinity,
                          child: ListView.separated(
                            clipBehavior: Clip.none,
                            separatorBuilder: (context, index) => SizedBox(width: 10.w),
                            itemCount: medicineCard.length,
                            itemBuilder: (context, index) {
                              return medicineCard[index];
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),

            Positioned(
              left: 24.w,
              right: 24.w,
              bottom: 20.h,
              child: SizedBox(
                height: 45.h,
                child: MPButton2(label: 'Add to Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
