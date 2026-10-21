import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme_screen_util.dart';
import '../../../../common/widgets/Buttons/appbar_button.dart';
import '../../../../utils/constants/colors.dart';

class EmptyNotifications extends StatelessWidget {
  const EmptyNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        leading: AppbarButton(icon: Icons.chevron_left, color: MColors.iconColor1, onPressed: () => Get.back()),
        title: Text(
          'Notifications',
          style: MTextTheme.semiBold.copyWith(fontSize: 16.sp), // Made text size responsive using .sp
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/svg/empty_notification.svg'),
            SizedBox(height: 30),
            Text('There is nothing here', style: MTextTheme.semiBold),
            SizedBox(height: 15),
            Text(
              ' We\’ll use this space to alert you on \n orders and promos ',
              textAlign: TextAlign.center,
              style: MTextTheme.regular.copyWith(fontSize: 14.sp, height: 1.5, color: MColors.textSecondaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
