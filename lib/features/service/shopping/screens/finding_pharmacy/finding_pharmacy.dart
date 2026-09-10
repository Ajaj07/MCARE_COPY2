import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

///----------------------------[Direct Screen Util]------------------------------------

class FindingPharmacy extends StatelessWidget {
  const FindingPharmacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 2),
            Container(
              width: 224.83.w,
              height: 180.h,
              alignment: Alignment.center,
              color: Colors.white,
              child: SvgPicture.asset('assets/icons/svg/finding_pharmacy.svg', fit: BoxFit.contain),
            ),
            SizedBox(height: 20.h),
            Text("Finding Nearest Pharmacy...", style: MTextTheme.semiBold, textAlign: TextAlign.center),
            SizedBox(height: 30.h),
            instructionRow(instructions: "Pricing, product availability, and shipping methods may differ."),
            SizedBox(height: 30.h),
            instructionRow(
              instructions:
                  "Select the delivery method that fits your requirements. Same Day Delivery and Next Day Delivery",
            ),
            Spacer(flex: 3),
          ],
        ),
      ),
    );
  }

  Row instructionRow({required String instructions}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.add_circle_outline, size: 24.sp, color: MColors.textSecondaryColor),
        SizedBox(width: 14.w),
        Expanded(child: Text(instructions, style: MTextTheme.labelMedium.copyWith(height: 1.5))),
      ],
    );
  }
}
