import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme_screen_util.dart';

import '../../../utils/constants/colors.dart';

///-------------------[ Direct With Screen Util]-------------------------

class Specialist extends StatefulWidget {
  Specialist({super.key});

  @override
  State<Specialist> createState() => _SpecialistState();
}

class _SpecialistState extends State<Specialist> {
  final specialties = [
    SpecialtyItem(iconPath: 'assets/icons/specialits_1.png', label: 'All'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_2.png', label: 'General Practitioner'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_3.png', label: 'Dentistry'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_4.png', label: 'Gynecology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_5.png', label: 'Ophthalmology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_6.png', label: 'Neurology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_7.png', label: 'Otorhinolaryingology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_8.png', label: 'Pulmonologist'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_9.png', label: 'Pediatrician'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_10.png', label: 'Neurology'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_11.png', label: 'Psychiatrist'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_12.png', label: 'Cardiologist'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_13.png', label: 'Gastoenterologi'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_14.png', label: 'virus'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_15.png', label: 'Orthopedi'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_7.png', label: 'Endocrin'),
    SpecialtyItem(iconPath: 'assets/icons/specialits_7.png', label: 'Dermatologist'),
  ];

  SpecialtyItem? selectedSpecialty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/back_arrow.png', width: 24.w, height: 24.h, fit: BoxFit.cover),
        ),
        title: Text('Specialist', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
        actions: [SizedBox(width: 48.w)],
      ),
      body: Padding(
        padding: EdgeInsets.all(28.w),
        child: Column(
          children: [
            Wrap(
              spacing: 16.w,
              runSpacing: 23.h,
              children: specialties
                  .map(
                    (item) => SpecialtyTile(
                      item: item,
                      isSelected: selectedSpecialty == item,
                      onTap: () => setState(() => selectedSpecialty = item),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class SpecialtyItem {
  final String iconPath;
  final String label;
  const SpecialtyItem({required this.iconPath, required this.label});
}

TextStyle labelStyle = TextStyle(fontWeight: FontWeight.w700, fontSize: 10, color: MColors.primaryColor);

class SpecialtyTile extends StatelessWidget {
  const SpecialtyTile({super.key, required this.item, this.isSelected = false, this.onTap});

  final SpecialtyItem item;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 81.w,
        height: 81.h,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          border: isSelected ? Border.all(color: MColors.primaryColor, width: 1.5.r) : null,
          boxShadow: [BoxShadow(color: const Color.fromARGB(96, 0, 0, 0), blurRadius: 5.r, offset: Offset(4.w, 4.h))],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center, // <- handles varying label length automatically
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(item.iconPath, width: 32.w, height: 32.h, fit: BoxFit.contain),
            SizedBox(height: 6.h),
            Flexible(
              child: Text(
                item.label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: labelStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
