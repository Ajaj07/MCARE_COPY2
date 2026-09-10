import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/theme/widget/text_theme_screen_util.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';
/// uses normal Text Them file

import '../../../../utils/constants/colors.dart';
import '../widgets/hospital_detail_card.dart';

/// without screen Util
/*
class ListHospital extends StatelessWidget {
  const ListHospital({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          // padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/back_arrow.png', width: 24, height: 24, fit: BoxFit.cover),
              ),

              Flexible(
                child: Container(
                  padding: EdgeInsets.only(right: 26, left: 10),
                  height: 48,
                  child: SearchBar(
                    hintText: 'Search product or store',
                    hintStyle: WidgetStatePropertyAll(
                      TextStyle(color: MColors.textThirtyColor, fontSize: 14, fontFamily: 'Khula'),
                    ),
                    leading: Icon(Icons.search, color: MColors.textThirtyColor, size: 22),
                    elevation: WidgetStatePropertyAll(0),
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFF9F9F9)),
                    side: WidgetStatePropertyAll(BorderSide(color: MColors.thirtyColor, width: 1)),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10),

              /// Search Provivinces
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                //18.5
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Color(0XFFE3E3E3), width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search Provinces', style: MTextTheme.regular.copyWith(color: MColors.primaryColor)),
                    Icon(Icons.keyboard_arrow_down_rounded, color: MColors.primaryColor, size: 24),
                  ],
                ),
              ),
              SizedBox(height: 20),

              ///Hospital Detail cards
              HospitalDetailCard(
                imageName: 'assets/images/hospital_list/image_1.png',
                title: 'Ospedale San Raffaele',
                subTitle: 'Via Olgettina, 60, 20132 Milano MI, Italy',
                moNo: ' (+22) 2361 6257 1726',
              ),

              SizedBox(height: 20),
              HospitalDetailCard(
                imageName: 'assets/images/hospital_list/image_2.png',
                title: 'Ospedale San Raffaele',
                subTitle: 'Via Olgettina, 60, 20132 Milano MI, Italy',
                moNo: ' (+22) 2361 6257 1726',
              ),

              SizedBox(height: 20),
              HospitalDetailCard(
                imageName: 'assets/images/hospital_list/image_3.png',
                title: 'Ospedale San Raffaele',
                subTitle: 'Via Olgettina, 60, 20132 Milano MI, Italy',
                moNo: ' (+22) 2361 6257 1726',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

*/

/// with screen Util
class ListHospital extends StatelessWidget {
  const ListHospital({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 10.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/back_arrow.png', width: 24.w, height: 24.h, fit: BoxFit.cover),
              ),
              Flexible(
                child: Container(
                  padding: EdgeInsets.only(right: 26.w, left: 10.w),
                  height: 48.h,
                  child: SearchBar(
                    hintText: 'Search product or store',
                    hintStyle: WidgetStatePropertyAll(
                      TextStyle(color: MColors.textThirtyColor, fontSize: 14.sp, fontFamily: 'Khula'),
                    ),
                    leading: Icon(Icons.search, color: MColors.textThirtyColor, size: 22.sp),
                    elevation: WidgetStatePropertyAll(0),
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFF9F9F9)),
                    side: WidgetStatePropertyAll(BorderSide(color: MColors.thirtyColor, width: 1.w)),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),

              /// Search Provinces
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(color: Color(0XFFE3E3E3), width: 1.w),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search Provinces', style: MTextTheme.regular.copyWith(color: MColors.primaryColor)),
                    Icon(Icons.keyboard_arrow_down_rounded, color: MColors.primaryColor, size: 24.sp),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              /// Hospital Detail cards
              HospitalDetailCard(
                imageName: 'assets/images/hospital_list/image_1.png',
                title: 'Ospedale San Raffaele',
                subTitle: 'Via Olgettina, 60, 20132 Milano MI, Italy',
                moNo: ' (+22) 2361 6257 1726',
              ),
              SizedBox(height: 20.h),
              HospitalDetailCard(
                imageName: 'assets/images/hospital_list/image_2.png',
                title: 'Ospedale San Raffaele',
                subTitle: 'Via Olgettina, 60, 20132 Milano MI, Italy',
                moNo: ' (+22) 2361 6257 1726',
              ),
              SizedBox(height: 20.h),
              HospitalDetailCard(
                imageName: 'assets/images/hospital_list/image_3.png',
                title: 'Ospedale San Raffaele',
                subTitle: 'Via Olgettina, 60, 20132 Milano MI, Italy',
                moNo: ' (+22) 2361 6257 1726',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
