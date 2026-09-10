import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/theme/widget/text_theme.dart';

class DescriMediText {
  DescriMediText._();
  static const String proDesc = "Product Description";
  static const String proDescContent =
      ''' Bufect is a reliable and effective medication presented in a convenient strip containing four tablets. Each tablet is meticulously formulated to provide targeted relief from various ailments. With its user-friendly packaging and easy-to-carry design, Bufect ensures quick access to relief whenever and wherever needed. Trust Bufect for fast-acting and dependable relief from discomfort.''';
  static const String benefits1 = 'Provides fast and effective relief from pain and discomfort.';
  static const String benefits2 =
      'Suitable for a wide range of aliments, including headaches, muscle aches, fever and menstrual cramps.';
  static const String benefits3 = 'Each tablet is individually sealed for fresheness and potency';
  static const String composition1 = 'Acetaminophen (500 mg)';
  static const String composition2 = 'Ibuprofen (200 mg)';
  static const String composition3 = 'Caffeine (50 mg)';
  static const String dosage1 =
      '''Adults : Take 1 tablet every 4 to 6 hours as needed. do not exceed 4 tables in 24 hours.''';
  static const String dosage2 =
      '''Children (ages 6-12): Take half a tablet every 4 to 6 hours as needed. Do not exceed 2 tablets in 24 hours ''';
  static const String dosage3 = '''Children under 6 years: Consult a healthcare professional before use ''';

  static const String storageInstructions =
      '''For optimal potency and safety, it is recommended to store this medication in a cool, dry place, away from direct sunlight. Exposure to excessive heat or  moisture may compromise the quality of the product.''';

  static const String storageInstructionsFull =
      '''For optimal potency and safety, it is recommended to store this medication in a cool, dry place, away from direct sunlight. Exposure to excessive heat or moisture may compromise the quality of the product. Additionally, it is important to keep this medication out of reach of children and pets to prevent accidental ingestion and ensure their safety.''';

  static const String sepecialPrecautions1 = '''Do not exceed the recommended dosage.''';

  static const String sepecialPrecautions2 =
      '''Children (ages 6-12): Take half a tablet every 4 to 6 hours as needed. Do not exceed 2 tablets in 24 hours ''';

  static const String sepecialPrecautions3 =
      '''Children under 6 years: Consult a healthcare professional before use ''';
}

///---------------------[Without Screen Util]------------------------------------
/*
class StartAlignedColumn extends StatelessWidget {
  final List<Widget> children;

  const StartAlignedColumn({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}

// Helper method for bullet rows
class BuildBulletPoint extends StatelessWidget {
  const BuildBulletPoint({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 6.h, right: 8.w),
          width: 6.w,
          height: 6.h,
          decoration: const BoxDecoration(
            color: MColors.textSecondaryColor, // Adjust color to fit your theme
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: MTextTheme.regular.copyWith(
              color: MColors.textSecondaryColor,
              height: 1.5, // Matches your Figma 150% line height
            ),
          ),
        ),
      ],
    );
    ;
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text(DescriMediText.proDesc, style: MTextTheme.semiBold.copyWith(fontSize: 16)),
        SizedBox(height: 7),
        Text(DescriMediText.proDescContent, style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
      ],
    );
  }
}

class ProductBenefits extends StatelessWidget {
  const ProductBenefits({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Benefits', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
        SizedBox(height: 7),
        BuildBulletPoint(text: DescriMediText.benefits1),
        BuildBulletPoint(text: DescriMediText.benefits2),
        BuildBulletPoint(text: DescriMediText.benefits3),
      ],
    );
  }
}

class ProductComposition extends StatelessWidget {
  const ProductComposition({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Composition', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
        SizedBox(height: 7),
        BuildBulletPoint(text: DescriMediText.composition1),
        BuildBulletPoint(text: DescriMediText.composition2),
        BuildBulletPoint(text: DescriMediText.composition3),
      ],
    );
  }
}

class ProductDosage extends StatelessWidget {
  const ProductDosage({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Dosage', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
        SizedBox(height: 7),
        BuildBulletPoint(text: DescriMediText.dosage1),
        BuildBulletPoint(text: DescriMediText.dosage2),
        BuildBulletPoint(text: DescriMediText.benefits3),
      ],
    );
  }
}

class StorageInstructionHalf extends StatelessWidget {
  const StorageInstructionHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Strorage Instructions', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
        SizedBox(height: 7),
        Text(DescriMediText.storageInstructions, style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
      ],
    );
  }
}

class StorageInstructionFull extends StatelessWidget {
  const StorageInstructionFull({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Strorage Instructions', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
        SizedBox(height: 7),
        Text(
          DescriMediText.storageInstructionsFull,
          style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor),
        ),
      ],
    );
  }
}

class SpecialPrecautions extends StatelessWidget {
  const SpecialPrecautions({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Special Precautions', style: MTextTheme.semiBold.copyWith(fontSize: 16)),
        SizedBox(height: 7),
        BuildBulletPoint(text: DescriMediText.sepecialPrecautions1),
        BuildBulletPoint(text: DescriMediText.sepecialPrecautions2),
        BuildBulletPoint(text: DescriMediText.sepecialPrecautions3),
      ],
    );
  }
}
*/

///---------------------[With Screen Util]------------------------------------
class StartAlignedColumn extends StatelessWidget {
  final List<Widget> children;

  const StartAlignedColumn({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}

// Helper method for bullet rows
class BuildBulletPoint extends StatelessWidget {
  const BuildBulletPoint({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 6.h, right: 8.w),
          width: 6.w,
          height: 6.h,
          decoration: const BoxDecoration(
            color: MColors.textSecondaryColor, // Adjust color to fit your theme
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: MTextTheme.regular.copyWith(
              color: MColors.textSecondaryColor,
              height: 1.5, // Matches your Figma 150% line height
            ),
          ),
        ),
      ],
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text(DescriMediText.proDesc, style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
        SizedBox(height: 7.h),
        Text(DescriMediText.proDescContent, style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
      ],
    );
  }
}

class ProductBenefits extends StatelessWidget {
  const ProductBenefits({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Benefits', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
        SizedBox(height: 7.h),
        BuildBulletPoint(text: DescriMediText.benefits1),
        BuildBulletPoint(text: DescriMediText.benefits2),
        BuildBulletPoint(text: DescriMediText.benefits3),
      ],
    );
  }
}

class ProductComposition extends StatelessWidget {
  const ProductComposition({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Composition', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
        SizedBox(height: 7.h),
        BuildBulletPoint(text: DescriMediText.composition1),
        BuildBulletPoint(text: DescriMediText.composition2),
        BuildBulletPoint(text: DescriMediText.composition3),
      ],
    );
  }
}

class ProductDosage extends StatelessWidget {
  const ProductDosage({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Dosage', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
        SizedBox(height: 7.h),
        BuildBulletPoint(text: DescriMediText.dosage1),
        BuildBulletPoint(text: DescriMediText.dosage2),
        BuildBulletPoint(text: DescriMediText.benefits3),
      ],
    );
  }
}

class StorageInstructionHalf extends StatelessWidget {
  const StorageInstructionHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Strorage Instructions', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
        SizedBox(height: 7.h),
        Text(DescriMediText.storageInstructions, style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor)),
      ],
    );
  }
}

class StorageInstructionFull extends StatelessWidget {
  const StorageInstructionFull({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Strorage Instructions', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
        SizedBox(height: 7.h),
        Text(
          DescriMediText.storageInstructionsFull,
          style: MTextTheme.regular.copyWith(color: MColors.textSecondaryColor),
        ),
      ],
    );
  }
}

class SpecialPrecautions extends StatelessWidget {
  const SpecialPrecautions({super.key});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: [
        Text('Special Precautions', style: MTextTheme.semiBold.copyWith(fontSize: 16.sp)),
        SizedBox(height: 7.h),
        BuildBulletPoint(text: DescriMediText.sepecialPrecautions1),
        BuildBulletPoint(text: DescriMediText.sepecialPrecautions2),
        BuildBulletPoint(text: DescriMediText.sepecialPrecautions3),
      ],
    );
  }
}
