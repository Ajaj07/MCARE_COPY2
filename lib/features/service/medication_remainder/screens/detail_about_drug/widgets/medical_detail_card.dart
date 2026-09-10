import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Added ScreenUtil import
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/theme/widget/text_theme_screen_util.dart';
import 'custom_drop_down_field.dart';

///---------------[Without screen Util]---------------------------
/*
class MedicalDetailCard extends StatelessWidget {
  const MedicalDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Color(0XFFE3E3E3), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ├── Heading
          Text('Medicine Details', style: MTextTheme.semiBold),
          SizedBox(height: 10),

          // ├── Image Picker
          Container(
            width: 80,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 1, color: MColors.secondaryColor),
            ),
            child: SvgPicture.asset(
              'assets/icons/svg/camera.svg',
              width: 44,
              height: 44,
              colorFilter: ColorFilter.mode(MColors.secondaryColor, BlendMode.srcIn),
            ),
          ),
          SizedBox(height: 20),

          // ├── Dosage Field
          Text('Dosage', style: MTextTheme.semiBold),
          SizedBox(height: 10),
          CustomDropdownField<String>(
            borderRadius: 6,
            hint: "Choose",
            items: const ["2.0 Caplets", "2.1 Caplets", "2.2 Caplets"],
            itemLabel: (item) => item,
            onChanged: (value) {
              // handle selection
            },
          ),
          SizedBox(height: 20),

          // ├── Taking Period Field
          Text('Period of Taking Medicine', style: MTextTheme.semiBold),
          SizedBox(height: 10),
          CustomDropdownField<String>(
            borderRadius: 6,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20),

          // ├── Times Per Day Field
          Text('How Many Times a Day', style: MTextTheme.semiBold),
          SizedBox(height: 10),

          CustomDropdownField<String>(
            borderRadius: 6,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20),

          // ├── Time Field
          Text('Time to Take Medicine ', style: MTextTheme.semiBold),
          SizedBox(height: 10),

          CustomDropdownField<String>(
            borderRadius: 6,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20),

          // ├── Drinking Rules Field
          Text('Drinking Rules', style: MTextTheme.semiBold),
          SizedBox(height: 10),
          CustomDropdownField<String>(
            borderRadius: 6,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20),

          // ├── Start Date Field
          Text('Drinking Start Date', style: MTextTheme.semiBold),
          SizedBox(height: 10),
          CustomDropdownField<String>(
            borderRadius: 6,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20),

          // ├── Duration Field
          Text('Duration of Consumption', style: MTextTheme.semiBold),
          SizedBox(height: 10),
          CustomDropdownField<String>(
            borderRadius: 6,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20),

          // └── Notes Field
          Text('Notes(Optional)', style: MTextTheme.semiBold),
          SizedBox(height: 10),
          CustomDropdownField<String>(
            borderRadius: 6,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
*/

///---------------[With screen Util]---------------------------

class MedicalDetailCard extends StatelessWidget {
  const MedicalDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.r), // Made padding responsive
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r), // Made border radius responsive
        border: Border.all(color: const Color(0XFFE3E3E3), width: 1.w), // Made border width responsive
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ├── Heading
          Text('Medicine Details', style: MTextTheme.semiBold),
          SizedBox(height: 10.h), // Made spacing responsive
          // ├── Image Picker
          Container(
            width: 80.w, // Made container width responsive
            height: 80.h, // Made container height responsive
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r), // Made border radius responsive
              border: Border.all(width: 1.w, color: MColors.secondaryColor), // Made border width responsive
            ),
            child: SvgPicture.asset(
              'assets/icons/svg/camera.svg',
              width: 44.w, // Made SVG asset width responsive
              height: 44.h, // Made SVG asset height responsive
              colorFilter: ColorFilter.mode(MColors.secondaryColor, BlendMode.srcIn),
            ),
          ),
          SizedBox(height: 20.h),

          // ├── Dosage Field
          Text('Dosage', style: MTextTheme.semiBold),
          SizedBox(height: 10.h),
          CustomDropdownField<String>(
            borderRadius: 6.r, // Made custom field border radius responsive
            hint: "Choose",
            items: const ["2.0 Caplets", "2.1 Caplets", "2.2 Caplets"],
            itemLabel: (item) => item,
            onChanged: (value) {
              // handle selection
            },
          ),
          SizedBox(height: 20.h),

          // ├── Taking Period Field
          Text('Period of Taking Medicine', style: MTextTheme.semiBold),
          SizedBox(height: 10.h),
          CustomDropdownField<String>(
            borderRadius: 6.r,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20.h),

          // ├── Times Per Day Field
          Text('How Many Times a Day', style: MTextTheme.semiBold),
          SizedBox(height: 10.h),

          CustomDropdownField<String>(
            borderRadius: 6.r,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20.h),

          // ├── Time Field
          Text('Time to Take Medicine ', style: MTextTheme.semiBold),
          SizedBox(height: 10.h),

          CustomDropdownField<String>(
            borderRadius: 6.r,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20.h),

          // ├── Drinking Rules Field
          Text('Drinking Rules', style: MTextTheme.semiBold),
          SizedBox(height: 10.h),
          CustomDropdownField<String>(
            borderRadius: 6.r,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20.h),

          // ├── Start Date Field
          Text('Drinking Start Date', style: MTextTheme.semiBold),
          SizedBox(height: 10.h),
          CustomDropdownField<String>(
            borderRadius: 6.r,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20.h),

          // ├── Duration Field
          Text('Duration of Consumption', style: MTextTheme.semiBold),
          SizedBox(height: 10.h),
          CustomDropdownField<String>(
            borderRadius: 6.r,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
          SizedBox(height: 20.h),

          // └── Notes Field
          Text('Notes(Optional)', style: MTextTheme.semiBold),
          SizedBox(height: 10.h),
          CustomDropdownField<String>(
            borderRadius: 6.r,
            hint: "Choose",
            items: const ['1 Times', '2 Times', '3 Times'],
            itemLabel: (item) => item,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
