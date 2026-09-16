import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../utils/constants/colors.dart';

class ConsultationContainer extends StatelessWidget {
  const ConsultationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(width: 1, color: MColors.textThirtyColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Consultation with a specialist', style: MTextTheme.headlineMedium.copyWith(fontSize: 16)),
                Text('Promote health via chat or call', style: MTextTheme.labelMedium),
              ],
            ),
          ),

          IconButton(
            iconSize: 15,

            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios_rounded, color: Colors.black, weight: 10),
          ),
        ],
      ),
    );
  }
}
