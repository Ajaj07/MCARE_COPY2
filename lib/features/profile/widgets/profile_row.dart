import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcare_copy2/common/widgets/images/comon_profile.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

import '../../../utils/theme/widget/text_theme_screen_util.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

///-----------------------------[without Screen Util ]-------------------------------
/*
class ProfileRow extends StatelessWidget {
  const ProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ComonProfile(width: 80, height: 80, borderWidth: 0, imageName: 'assets/images/Profile.jpg'),
              Positioned(
                left: 56,
                top: 56,
                child: Container(
                  width: 24,
                  height: 24,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: MColors.primaryColor, shape: BoxShape.circle),
                  child: SvgPicture.asset('assets/icons/svg/pencil_edit.svg', fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Expanded(
            // <-- constrains the Column's width so its children can shrink/truncate
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text('Lorenzo Ricci', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
                Row(
                  spacing: 6,
                  children: [
                    SvgPicture.asset('assets/icons/svg/mail.svg', width: 16, height: 16, fit: BoxFit.cover),
                    Expanded(
                      // <-- lets Text know its max width, enabling ellipsis
                      child: Text(
                        'lorenzoricci@example.com',
                        style: MTextTheme.labelMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 6,
                  children: [
                    SvgPicture.asset('assets/icons/svg/call.svg', width: 16, height: 16, fit: BoxFit.cover),
                    Expanded(
                      child: Text(
                        '+39 1234567890',
                        style: MTextTheme.labelMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/

///-----------------------------[with Screen Util ]-------------------------------

class ProfileRow extends StatelessWidget {
  const ProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ComonProfile(width: 80.w, height: 80.h, borderWidth: 0, imageName: 'assets/images/Profile.jpg'),
            Positioned(
              left: 56.w,
              top: 56.h,
              child: Container(
                width: 24.w,
                height: 24.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: MColors.primaryColor, shape: BoxShape.circle),
                child: SvgPicture.asset('assets/icons/svg/pencil_edit.svg', fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        SizedBox(width: 20.w),
        Expanded(
          // <-- constrains the Column's width so its children can shrink/truncate
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8.h,
            children: [
              Text('Lorenzo Ricci', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
              Row(
                spacing: 6.w,
                children: [
                  SvgPicture.asset('assets/icons/svg/mail.svg', width: 16.w, height: 16.h, fit: BoxFit.cover),
                  Expanded(
                    // <-- lets Text know its max width, enabling ellipsis
                    child: Text(
                      'lorenzoricci@example.com',
                      style: MTextTheme.labelMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 6.w,
                children: [
                  SvgPicture.asset('assets/icons/svg/call.svg', width: 16.w, height: 16.h, fit: BoxFit.cover),
                  Expanded(
                    child: Text(
                      '+39 1234567890',
                      style: MTextTheme.labelMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
