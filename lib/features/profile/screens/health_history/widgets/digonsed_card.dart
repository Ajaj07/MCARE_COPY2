import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme_screen_util.dart';

import '../../../../../utils/constants/colors.dart';

///--------------------------[WithOut Screen Util]---------------------------------------
/*
class DigonsedCard extends StatelessWidget {
  const DigonsedCard({super.key, required this.buttonLabel, required this.texts, this.clickAbleText = 'Check Details'});
  final String buttonLabel;
  final List<String?> texts;
  final String? clickAbleText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(color: Color(0XFF090909), borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: EdgeInsets.only(left: 24, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // button Row
            _buttonRow(buttonLabel: buttonLabel),

            SizedBox(height: 15),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...texts
                    .where((text) => text != null && text!.isNotEmpty)
                    .expand(
                      (text) => [
                        Text(text!, style: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor)),
                        const SizedBox(height: 10),
                      ],
                    ),
              ],
            ),
            SizedBox(height: 20),
            // click here
            _clickAbleText(labelText: clickAbleText!),
          ],
        ),
      ),
    );
  }

  Text _clickAbleText({required String labelText}) {
    return Text(
      labelText,
      style: MTextTheme.labelMedium.copyWith(
        decoration: TextDecoration.underline,
        decorationColor: MColors.primaryColor,
        color: MColors.primaryColor,
      ),
    );
  }

  Row _buttonRow({required String buttonLabel}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          alignment: Alignment(0, 0),
          decoration: BoxDecoration(color: MColors.textSecondaryColor, borderRadius: BorderRadius.circular(4)),
          child: Text(buttonLabel, style: MTextTheme.regular.copyWith(color: Colors.white, fontSize: 8)),
        ),
      ],
    );
  }
}
*/

///--------------------------[With Screen Util]---------------------------------------
class DigonsedCard extends StatelessWidget {
  const DigonsedCard({super.key, required this.buttonLabel, required this.texts, this.clickAbleText = 'Check Details'});
  final String buttonLabel;
  final List<String?> texts;
  final String? clickAbleText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      decoration: BoxDecoration(color: Color(0XFF090909), borderRadius: BorderRadius.circular(6.r)),
      child: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // button Row
            _buttonRow(buttonLabel: buttonLabel),

            SizedBox(height: 15.h),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...texts
                    .where((text) => text != null && text!.isNotEmpty)
                    .expand(
                      (text) => [
                        Text(text!, style: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor)),
                        SizedBox(height: 10.h),
                      ],
                    ),
              ],
            ),
            SizedBox(height: 20.h),
            // click here
            _clickAbleText(labelText: clickAbleText!),
          ],
        ),
      ),
    );
  }

  Text _clickAbleText({required String labelText}) {
    return Text(
      labelText,
      style: MTextTheme.labelMedium.copyWith(
        decoration: TextDecoration.underline,
        decorationColor: MColors.primaryColor,
        color: MColors.primaryColor,
      ),
    );
  }

  Row _buttonRow({required String buttonLabel}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
          alignment: Alignment(0, 0),
          decoration: BoxDecoration(color: MColors.textSecondaryColor, borderRadius: BorderRadius.circular(4.r)),
          child: Text(
            buttonLabel,
            style: MTextTheme.regular.copyWith(color: Colors.white, fontSize: 8.sp),
          ),
        ),
      ],
    );
  }
}
