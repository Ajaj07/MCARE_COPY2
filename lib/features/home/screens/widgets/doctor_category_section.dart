import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';

class DoctorCatogorySection extends StatelessWidget {
  const DoctorCatogorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 16,
      spacing: 16,
      children: [
        DoctorCategory(imagename: MImages.categoryImage1, label: 'All'),
        DoctorCategory(imagename: MImages.categoryImage2, label: 'General\nPractitioner'),
        DoctorCategory(imagename: MImages.categoryImage3, label: 'Dentistry'),

        DoctorCategory(imagename: MImages.categoryImage4, label: 'Gynecology'),

        DoctorCategory(imagename: MImages.categoryImage5, label: 'Ophthalmology'),
        DoctorCategory(imagename: MImages.categoryImage6, label: 'Neurology'),
        DoctorCategory(imagename: MImages.categoryImage7, label: 'Otorhinolaryng\nology'),
        DoctorCategory(imagename: MImages.categoryImage8, label: 'Pulmonologist'),
      ],
    );
  }
}

class DoctorCategory extends StatelessWidget {
  const DoctorCategory({super.key, required this.imagename, required this.label});

  final String imagename;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 81,
      height: 81, // ✅ stays exactly as Figma specifies
      padding: const EdgeInsets.fromLTRB(9, 9, 9, 9), // adjust to match your Figma padding exactly
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6), // Figma shows 6px radius
        boxShadow: [BoxShadow(color: Colors.black.withAlpha(125), blurRadius: 2)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagename.trim(),
            width: 24, // ✅ smaller icon, matches Figma proportions better than 36
            height: 24,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 4),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown, // ✅ shrinks text to whatever fits, never overflows
              child: Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: MTextTheme.bodySmall.copyWith(color: MColors.primaryColor, fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
