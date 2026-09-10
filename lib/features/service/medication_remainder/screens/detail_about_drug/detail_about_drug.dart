import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Added ScreenUtil import
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../../common/widgets/Buttons/primary_button.dart';
import '../../../../../common/widgets/notification/notification_row.dart';

import 'widgets/drug_info_card.dart';
import 'widgets/medical_detail_card.dart';

///---------------[Without screen Util]---------------------------
/*
class DetailAboutDrug extends StatelessWidget {
  const DetailAboutDrug({super.key});

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
          icon: Image.asset('assets/icons/back_arrow.png', width: 24, height: 24, fit: BoxFit.cover),
        ),
        title: Text('Details about the drug', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///----------------------[ Drug Information  Card]----------------------------------------
                DrugInfoCard(
                  title: 'Paracetamol 500 mg',
                  subTitle: 'Take 1 tablet every 6 hours as needed to reduce fever or pain.',
                ),
                SizedBox(height: 20),

                ///----------------------[Medical Detail Card]----------------------------------------
                MedicalDetailCard(),
                SizedBox(height: 20),

                ///----------------------[Notification  Card]-----------------------------------------
                NotificationRow2(),
                SizedBox(height: 20),

                ///----------------------[Save Button]------------------------------------------------
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 28, right: 28, bottom: 30),
          width: double.infinity,
          height: 70,
          child: MPButton2(label: 'save'),
        ),
      ),
    );
  }
}
*/

///---------------[With screen Util]---------------------------

class DetailAboutDrug extends StatelessWidget {
  const DetailAboutDrug({super.key});

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
          'Details about the drug',
          style: MTextTheme.semiBold.copyWith(fontSize: 16.sp), // Made text size responsive using .sp
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w), // Made horizontal page padding responsive
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///----------------------[ Drug Information Card]----------------------------------------
                const DrugInfoCard(
                  title: 'Paracetamol 500 mg',
                  subTitle: 'Take 1 tablet every 6 hours as needed to reduce fever or pain.',
                ),
                SizedBox(height: 20.h), // Made spacing responsive
                ///----------------------[Medical Detail Card]----------------------------------------
                const MedicalDetailCard(),
                SizedBox(height: 20.h),

                ///----------------------[Notification Card]-----------------------------------------
                const NotificationRow2(),
                SizedBox(height: 20.h),

                ///----------------------[Save Button]------------------------------------------------
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: 28.w, // Made bottom bar horizontal padding responsive
            right: 28.w,
            bottom: 30.h, // Made bottom bar vertical spacing responsive
          ),
          width: double.infinity,
          height: 85.h, // Increased from 70 to give adequate space for the button layout with .h scalability
          child: const MPButton2(label: 'save'),
        ),
      ),
    );
  }
}
