import 'package:flutter/material.dart';
import '../../../common/widgets/Buttons/secondary_button.dart';
import '../../../common/widgets/images/comon_profile.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/theme/widget/text_theme.dart';

/// without screen util
/*
class VisiteCompletedCard extends StatelessWidget {
  const VisiteCompletedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Color(0XFFE3E3E3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // first row (Profile )
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // First Row
                ProfileRow(),
                SizedBox(height: 20),
                //divider
                Divider(height: 2, color: Color(0XFFE3E3E3)),
                SizedBox(height: 20),
                // second Row
                DescriptionRow(),
                SizedBox(height: 20),
              ],
            ),
          ),

          // 3 'rd Row
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF9F8FD),
              // Colors.red, // testing color
              //Actual Color  Color(0xFFF9F8FD)
              border: Border.all(width: 1, color: Color(0XFFE3E3E3)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Button(label: 'Add Review')),
                SizedBox(width: 15),
                Expanded(child: Button(label: 'Next Appointment')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key, required this.label, this.callback});
  final String label;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        alignment:
            Alignment.center, // <-- centers child regardless of Expanded width
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 1, color: MColors.secondaryColor),
        ),
        child: Text(
          label.trim(),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: MTextTheme.semiBold.copyWith(color: MColors.primaryColor),
        ),
      ),
    );
  }
}

class DescriptionRow extends StatelessWidget {
  const DescriptionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // date Time
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Date& Time',
                style: MTextTheme.bodyMedium.copyWith(
                  color: MColors.textThirtyColor,
                ),
              ),
              // SizedBox(height: 12),
              Text(
                'Wednesday, 29 Feb 04.00 pm',
                style: MTextTheme.bodyLarge.copyWith(fontSize: 12),
              ),
            ],
          ),
        ),

        // Location
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location',
                style: MTextTheme.bodyMedium.copyWith(
                  color: MColors.textThirtyColor,
                ),
              ),
              // SizedBox(height: 12),
              Text(
                'Bella Vista Surgery Clinic, Via Garibaldi 10, Milan, Italy',
                style: MTextTheme.bodyLarge.copyWith(fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileRow extends StatelessWidget {
  const ProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //name  and  Desiganation Column
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dr. Giovanni Bianchi',
              style: MTextTheme.semiBold.copyWith(fontSize: 16),
            ),
            // SizedBox(height: 10),
            Text(
              'General Surgery',
              style: MTextTheme.bodyMedium.copyWith(
                color: MColors.textSecondaryColor,
              ),
            ),
          ],
        ),
        ComonProfile(
          width: 44,
          height: 44,
          imageName: 'assets/images/chat/fabian.png',
          borderWidth: 4,
          boxFit: BoxFit.fill,
        ),
      ],
    );
  }
}
*/

/// with screen util

import 'package:flutter_screenutil/flutter_screenutil.dart';

class VisiteCompletedCard extends StatelessWidget {
  const VisiteCompletedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(width: 1.w, color: const Color(0XFFE3E3E3)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // first row (Profile )
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // First Row
                ProfileRow(),
                SizedBox(height: 20.h),
                //divider
                Divider(height: 2.h, color: const Color(0XFFE3E3E3)),
                SizedBox(height: 20.h),
                // second Row
                DescriptionRow(),
                SizedBox(height: 20.h),
              ],
            ),
          ),

          // 3 'rd Row
          Container(
            padding: EdgeInsets.all(15.r),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFF9F8FD),

              border: Border(
                top: BorderSide(width: 1.w, color: const Color(0XFFE3E3E3)),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: MSButton2(
                    label: 'Add Review',
                    callback: () {
                      reviewBottomSheet(context);
                    },
                  ),
                ),
                SizedBox(width: 15.w),
                Expanded(
                  child: MSButton2(
                    label: 'Next Appointment',
                    buttonStyle: ButtonStyle(
                      padding: const WidgetStatePropertyAll(EdgeInsets.zero),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PersistentBottomSheetController reviewBottomSheet(BuildContext context) {
    return showBottomSheet(
      backgroundColor: Colors.white,
      sheetAnimationStyle: AnimationStyle(
        duration: Duration(seconds: 2),
        curve: FlippedCurve(Curves.decelerate),
      ),
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(color: Color(0XFFFFFFFF)),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              /// custom drag indicator
              // SizedBox(height: 12),
              Center(
                child: Container(
                  width: 60,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Color(0xFFA6CFD5),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),

              /// Review title
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Review',
                    style: MTextTheme.bold.copyWith(color: Color(0XFF090909)),
                  ),
                ],
              ),
              SizedBox(height: 20),

              /// rating section
              Text(
                'Ratings',
                style: MTextTheme.semiBold.copyWith(
                  color: MColors.textSecondaryColor,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              // rsting row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 2,
                children: [
                  Icon(Icons.star_border_rounded, color: Color(0XFFFFA740)),

                  Icon(Icons.star_border_rounded, color: Color(0XFFFFA740)),

                  Icon(Icons.star_border_rounded, color: Color(0XFFFFA740)),

                  Icon(Icons.star_border_rounded, color: Color(0XFFFFA740)),

                  Icon(Icons.star_border_rounded, color: Color(0XFFFFA740)),
                ],
              ),
              SizedBox(height: 10),

              /// your review section
              Text(
                'Your review',
                style: MTextTheme.semiBold.copyWith(
                  color: MColors.textSecondaryColor,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              // text Field
              SizedBox(
                height: 100,
                width: double.infinity,
                child: TextField(
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    hintText: 'Write your review',
                    hintStyle: MTextTheme.labelMedium.copyWith(
                      color: MColors.textThirtyColor,
                    ),
                    contentPadding: const EdgeInsets.only(
                      top: 14,
                      right: 16,
                      bottom: 14,
                      left: 16,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Color(0xFFE3E3E3),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Color(
                          0xFFE3E3E3,
                        ), // You might want to change this to your primary color on focus
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Color(0xFFE3E3E3),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              /// "Cancel " and " Reschedule " buttons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(width: 1, color: MColors.thirtyColor),
                      ),
                      child: Text(
                        'Cancel',
                        style: MTextTheme.semiBold.copyWith(
                          fontSize: 16,
                          color: MColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MColors.primaryColor,
                      ),
                      child: Text(
                        'Reschedule',
                        style: MTextTheme.semiBold.copyWith(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key, required this.label, this.callback});
  final String label;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      borderRadius: BorderRadius.circular(100.r),
      child: Container(
        alignment:
            Alignment.center, // <-- centers child regardless of Expanded width
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(100.r),
          border: Border.all(width: 1.w, color: MColors.secondaryColor),
        ),
        child: Text(
          label.trim(),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: MTextTheme.semiBold.copyWith(color: MColors.primaryColor),
        ),
      ),
    );
  }
}

class DescriptionRow extends StatelessWidget {
  const DescriptionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // date Time
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Date& Time',
                style: MTextTheme.bodyMedium.copyWith(
                  color: MColors.textThirtyColor,
                ),
              ),
              // SizedBox(height: 12),
              Text(
                'Wednesday, 29 Feb 04.00 pm',
                style: MTextTheme.bodyLarge.copyWith(fontSize: 12.sp),
              ),
            ],
          ),
        ),

        // Location
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location',
                style: MTextTheme.bodyMedium.copyWith(
                  color: MColors.textThirtyColor,
                ),
              ),
              // SizedBox(height: 12),
              Text(
                'Bella Vista Surgery Clinic, Via Garibaldi 10, Milan, Italy',
                style: MTextTheme.bodyLarge.copyWith(fontSize: 12.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileRow extends StatelessWidget {
  const ProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //name  and  Desiganation Column
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dr. Giovanni Bianchi',
              style: MTextTheme.semiBold.copyWith(fontSize: 16.sp),
            ),
            // SizedBox(height: 10),
            Text(
              'General Surgery',
              style: MTextTheme.bodyMedium.copyWith(
                color: MColors.textSecondaryColor,
              ),
            ),
          ],
        ),
        ComonProfile(
          width: 44.w,
          height: 44.h,
          imageName: 'assets/images/chat/fabian.png',
          borderWidth: 4.w,
          boxFit: BoxFit.fill,
        ),
      ],
    );
  }
}
