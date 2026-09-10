import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/widgets/Buttons/primary_button.dart';
import '../../../../common/widgets/Buttons/secondary_button.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/theme/widget/text_theme_screen_util.dart';

/// without screen util
/*
class HospitalDetailCard extends StatelessWidget {
  const HospitalDetailCard({
    super.key,
    required this.imageName,
    required this.title,
    required this.subTitle,
    required this.moNo,
  });

  final String imageName, title, subTitle, moNo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: MColors.thirtyColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // hospital row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start, // good practice when heights can vary
            children: [
              Container(
                width: 90,
                height: 74,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: MColors.thirtyColor),
                child: Image.asset(imageName.trim(), fit: BoxFit.fill),
              ),
              SizedBox(width: 15),
              // details Column — now constrained
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Text(title, style: MTextTheme.semiBold, maxLines: 2, overflow: TextOverflow.ellipsis),
                    Text(
                      subTitle,
                      style: MTextTheme.labelLarge.copyWith(
                        fontWeight: FontWeight.w400,
                        color: MColors.textSecondaryColor,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/svg/call.svg',
                          height: 14,
                          width: 14,
                          fit: BoxFit.fill,
                          colorFilter: const ColorFilter.mode(MColors.primaryColor, BlendMode.srcIn),
                        ),
                        const SizedBox(width: 4),
                        Flexible(
                          // in case moNo is long too
                          child: Text(
                            moNo,
                            style: MTextTheme.labelLarge.copyWith(
                              fontWeight: FontWeight.w600,
                              color: MColors.primaryColor,
                            ),
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
          SizedBox(height: 16),
          // devider
          Divider(color: Color(0XFFE3E3E3), thickness: 1),
          SizedBox(height: 16),

          // buttons  row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: MSButton2(
                  label: 'Bed  Detail',
                  buttonStyle: ButtonStyle(side: WidgetStatePropertyAll(BorderSide(color: MColors.primaryColor))),
                ),
              ),
              SizedBox(width: 16),
              Expanded(child: MPButton2(label: 'Location')),
            ],
          ),
        ],
      ),
    );
  }
}
*/

/// with screen util
class HospitalDetailCard extends StatelessWidget {
  const HospitalDetailCard({
    super.key,
    required this.imageName,
    required this.title,
    required this.subTitle,
    required this.moNo,
  });

  final String imageName, title, subTitle, moNo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1.w, color: MColors.thirtyColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // hospital row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image
              Container(
                width: 90.w,
                height: 74.h,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.r), color: MColors.thirtyColor),
                child: Image.asset(imageName.trim(), fit: BoxFit.fill),
              ),
              SizedBox(width: 15.w),
              // details Column — constrained so long text wraps/truncates instead of overflowing
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5.h,
                  children: [
                    Text(title, style: MTextTheme.semiBold, maxLines: 2, overflow: TextOverflow.ellipsis),
                    Text(
                      subTitle,
                      style: MTextTheme.labelLarge.copyWith(
                        fontWeight: FontWeight.w400,
                        color: MColors.textSecondaryColor,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/svg/call.svg',
                          height: 14.h,
                          width: 14.w,
                          fit: BoxFit.fill,
                          colorFilter: const ColorFilter.mode(MColors.primaryColor, BlendMode.srcIn),
                        ),
                        SizedBox(width: 4.w),
                        Flexible(
                          child: Text(
                            moNo,
                            style: MTextTheme.labelLarge.copyWith(
                              fontWeight: FontWeight.w600,
                              color: MColors.primaryColor,
                            ),
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
          SizedBox(height: 16.h),
          // divider
          Divider(color: Color(0XFFE3E3E3), thickness: 1.h),
          SizedBox(height: 16.h),

          // buttons row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: MSButton2(
                  label: 'Bed  Detail',
                  buttonStyle: ButtonStyle(side: WidgetStatePropertyAll(BorderSide(color: MColors.primaryColor))),
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(child: MPButton2(label: 'Location')),
            ],
          ),
        ],
      ),
    );
  }
}
