import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme_screen_util.dart';

import 'widgets/digonsed_card.dart';
import 'widgets/disease_expansion_tile.dart';

///-------------------------------------[Direct Screen Util criteria]---------------------------------------------
class HealthHistory extends StatelessWidget {
  const HealthHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/icons/back_arrow.png',
            width: 24.w, // Made back arrow width responsive
            height: 24.h, // Made back arrow height responsive
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          'Health History',
          style: MTextTheme.semiBold.copyWith(fontSize: 16.sp), // Made text size responsive using .sp
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///------------------------------[Disease History]--------------------------------------
              DiseaseExpansionTile(),
              SizedBox(height: 20.h),

              ///------------------------------[Digonasis Card]---------------------------------------
              DigonsedCard(buttonLabel: 'Disease History', texts: ['Diagnosis : January 10, 2022']),
              SizedBox(height: 20.h),
              DigonsedCard(buttonLabel: 'Disease History', texts: ['Diagnosis : May 15, 2023']),
              SizedBox(height: 20.h),
              DigonsedCard(
                buttonLabel: 'Allergy History',
                texts: ['Severity : Severe, Precautions', 'Avoid foods containing nuts'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
