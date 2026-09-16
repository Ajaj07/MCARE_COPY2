import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../utils/constants/colors.dart';

class HealthArticletile extends StatelessWidget {
  const HealthArticletile({super.key, required this.imageName, required this.label1, required this.label2});

  final String imageName, label1, label2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 16,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(6),
            child: Image.asset(imageName.trim().toString(), width: 88, height: 88, fit: BoxFit.cover),
          ),
          // column
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: 9,
                children: [
                  Text(label1.toString(), style: MTextTheme.bodyMedium.copyWith(color: MColors.textSecondaryColor)),

                  Text(
                    label2.toString(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: MTextTheme.headlineSmall.copyWith(fontSize: 16, height: 1.2),
                  ),

                  Text(
                    '11-jun-2023',
                    style: MTextTheme.bodySmall.copyWith(fontSize: 10, color: MColors.textSecondaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
