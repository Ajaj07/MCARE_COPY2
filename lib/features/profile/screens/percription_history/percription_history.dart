import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/features/profile/screens/percription_history/widgets/percription_expansion_tile.dart';

import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import 'widgets/percription_card.dart';

class PercriptionHistory extends StatelessWidget {
  const PercriptionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Prescription History',
          style: MTextTheme.semiBold.copyWith(fontSize: 16.sp), // Made text size responsive using .sp
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 20.h),

              ///---------------------------[Active Recipe Section]------------------------
              PercriptionExpansionTile(),
              SizedBox(height: 20.h),

              ///---------------------------[percription Section]--------------------------
              PercriptionCard(),
              SizedBox(height: 20.h),
              PercriptionCard(),
            ],
          ),
        ),
      ),
    );
  }
}
