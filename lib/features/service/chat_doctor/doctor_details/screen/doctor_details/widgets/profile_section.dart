import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../../../../utils/constants/colors.dart';
import '../../../../widgets/circle_profile.dart';

class _ProfileStack extends StatelessWidget {
  const _ProfileStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleProfile(),
        Positioned(
          top: 73,
          left: 74,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Color(0xFF6E9024)),
          ),
        ),
      ],
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.to(() => const Conformation());
      },
      child: Container(
        width: double.infinity,
        color: Color(0xFFF6F1FF),
        height: 288.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10.h, // all size is 14
          children: [
            // profile picture
            //container 100x100  border width: 4px ,color:secondary
            _ProfileStack(),
            // name
            Text('Dr. Luca Rossi', style: MTextTheme.semiBold.copyWith(fontSize: 20.sp)),
            //specialist
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cardiology Specialist \t',
                  style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor),
                ),

                Icon(Icons.circle, size: 5, color: MColors.textSecondaryColor),

                Text(' 3 Years', style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
              ],
            ),
            //rattings
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4.w,
              children: [
                Icon(Icons.star, size: 14, color: Color(0XFFFFA740)),
                Icon(Icons.star, size: 14, color: Color(0XFFFFA740)),
                Icon(Icons.star, size: 14, color: Color(0XFFFFA740)),
                Icon(Icons.star, size: 14, color: Color(0XFFFFA740)),
                Icon(Icons.star_border, size: 14, color: Color(0XFFFFA740)),
                Text("12 Reviews", style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
              ],
            ),
            // SizedBox(height: 28.h),
          ],
        ),
      ),
    );
  }
}
