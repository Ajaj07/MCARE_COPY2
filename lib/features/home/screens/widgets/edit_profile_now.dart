import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../utils/constants/colors.dart';

class EditProfileNow extends StatelessWidget {
  const EditProfileNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(gradient: LinearGradient(colors: [MColors.gradientColor1, MColors.gradientColor2])),
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Positioned(
            top: -115,
            left: -144,
            child: Container(
              width: 197,
              height: 197,
              decoration: BoxDecoration(
                color: MColors.circleColor.withAlpha(115),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          Positioned(
            top: -19,
            left: 317,
            child: Container(
              width: 197,
              height: 197,
              decoration: BoxDecoration(color: Colors.white.withAlpha(75), borderRadius: BorderRadius.circular(100)),
            ),
          ),

          Positioned(
            left: 26,
            top: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Experience Seamless \n Healthcare Management \n with MediConnect',
                  style: MTextTheme.headlineSmall.copyWith(height: 1.35, color: MColors.whiteColor),
                ),
                SizedBox(height: 26),
                Container(
                  width: 164,
                  height: 32,
                  color: MColors.primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Fill Your Profile Now! ', style: MTextTheme.bodyMedium),
                      Icon(Icons.arrow_forward_ios, color: MColors.whiteColor, size: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Align(alignment: Alignment.bottomRight, child: Image.asset('assets/images/do_img1.png')),
        ],
      ),
    );
  }
}
