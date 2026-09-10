import 'package:flutter/material.dart';

import '../widgets/visite_completed_card.dart';

/// without screen util
/*
class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          VisiteCompletedCard(),
          SizedBox(height: 8),
          VisiteCompletedCard(),
        ],
      ),
    );
  }
}
*/

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          VisiteCompletedCard(),
          SizedBox(height: 8.h),
          VisiteCompletedCard(),
        ],
      ),
    );
  }
}
