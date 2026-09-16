import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class HealthSearchBar extends StatelessWidget {
  const HealthSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0XFFF9F9F9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: MColors.thirtyColor),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: MColors.textThirtyColor, size: 22),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              'Find a doctor, medicine or health services',
              style: TextStyle(color: MColors.textThirtyColor, fontFamily: 'Khula', fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.tune, color: MColors.textThirtyColor, size: 20),
        ],
      ),
    );
  }
}
