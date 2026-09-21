import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/common/routes/app_routes.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';
import '../../../../utils/constants/colors.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.image,
    required this.name,
    required this.designation,
    required this.experience,
    required this.available,
  });

  final String image;
  final String name;
  final String designation;
  final String available;
  final int experience;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.doctorDetails);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Profile Image
            ClipRRect(
              borderRadius: BorderRadius.circular(4.r),
              child: Image.asset(image, width: 64.w, height: 64.h, fit: BoxFit.fill),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name
                  Text(name, style: MTextTheme.semiBold),

                  // Designation & Experience Row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('$designation \t', style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),
                      Icon(Icons.circle, size: 5.sp, color: MColors.textSecondaryColor),
                      Text(
                        ' $experience Years',
                        style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor),
                      ),
                    ],
                  ),

                  // Availability Tag
                  Container(
                    decoration: BoxDecoration(color: const Color(0XFFDCFFDD), borderRadius: BorderRadius.circular(4.r)),
                    padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
                    child: Text(
                      'Available on $available',
                      style: MTextTheme.regular.copyWith(fontSize: 10.sp, color: MColors.textSecondaryColor),
                    ),
                  ),
                ],
              ),
            ),

            /// Right Side Arrow
            IconButton(
              onPressed: () {},
              icon: ImageIcon(const AssetImage('assets/icons/right_hand.png'), color: MColors.textSecondaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
