import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../common/widgets/Buttons/primary_button.dart';
import '../../../../common/widgets/TextField/text_field.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/device_helpers.dart';

class CommonSection extends StatefulWidget {
  const CommonSection({super.key});

  @override
  State<CommonSection> createState() => _CommonSectionState();
}

class _CommonSectionState extends State<CommonSection> {
  String? selectedGender;
  late final TextEditingController _genderController;

  @override
  void initState() {
    super.initState();
    _genderController = TextEditingController(text: selectedGender);
  }

  @override
  void dispose() {
    _genderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),

        Text('Full Name', style: MTextTheme.bold.copyWith(fontWeight: FontWeight.w600)),
        SizedBox(height: 12.h),

        /// Full Name
        CustomField(
          hintText: "Enter Your Name",
          hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
        ),

        SizedBox(height: 20.h),
        Text('Gender', style: MTextTheme.bold.copyWith(fontWeight: FontWeight.w600)),
        SizedBox(height: 12.h),

        ////
        CustomField(
          readOnly: true,
          hintText: 'Select gender',
          hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
          controller: _genderController,
          trailing: Icon(Icons.keyboard_arrow_down, size: 20.sp),
          onTap: () async {
            final result = await showModalBottomSheet<String>(
              context: context,
              builder: (context) => SafeArea(
                child: Wrap(
                  children: [
                    'Male',
                    'Female',
                    'Other',
                  ].map((g) => ListTile(title: Text(g), onTap: () => Navigator.pop(context, g))).toList(),
                ),
              ),
            );
            if (result != null) {
              setState(() {
                selectedGender = result;
                _genderController.text = result;
              });
            }
          },
        ),
        SizedBox(height: 20.h),
        Text(
          'Date of birth',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: MColors.primaryColor),
        ),
        SizedBox(height: 12.h),

        /// Date Of Birth
        CustomField(
          onTap: () async {
            final picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );
          },
          readOnly: true,
          hintText: "Enter Your Date of Birth",
          hintStyle: MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor),
          trailing: Icon(Icons.calendar_month_outlined, size: 20.sp),
        ),

        ///
        SizedBox(height: 20.h),

        /// check box
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5.w,
          children: [
            Checkbox(
              side: BorderSide(
                color: MColors.secondaryColor, // Your custom border color
                // width: 2.0, // Your custom border width
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.r)),
              value: false,
              onChanged: (val) {},
            ),
            Expanded(
              child: Text(
                'You agree to receive information and notifications sent by MedCare',
                style: TextStyle(color: MColors.textSecondaryColor, fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),

        /// Register Button
        Padding(
          padding: EdgeInsets.only(top: MDeviceHelper.getBottomNavigationBarHeight()),
          child: MPButton(label: 'Register', pressed: () => Get.toNamed('/emailVerification')),
        ),
        SizedBox(height: 16.h),
        Align(
          alignment: Alignment.center,
          child: Text.rich(
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400, color: MColors.textSecondaryColor),
            TextSpan(
              text: " Already have an account? ",
              children: [
                TextSpan(
                  text: ' Click here to log in?  ',
                  style: TextStyle(color: MColors.primaryColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
