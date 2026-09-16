import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/theme/widget/text_theme.dart';

class NearbyHospitalSection extends StatelessWidget {
  const NearbyHospitalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          NearbyHospitalCard(label: 'Cipto\nMangunkusumo\nHospital (RSCM)', imageName: 'assets/images/rscm.png'),
          SizedBox(width: 16),

          NearbyHospitalCard(label: 'Mitra\nHospital', imageName: 'assets/images/mitra_keluarga.png'),
          SizedBox(width: 16),

          NearbyHospitalCard(label: 'Mayapada\nHospital', imageName: 'assets/images/mayapada.png'),
          SizedBox(width: 16),

          NearbyHospitalCard(label: 'Cipto\nMangunkusumo\nHospital (RSCM)', imageName: 'assets/images/rscm.png'),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}

class NearbyHospitalCard extends StatelessWidget {
  const NearbyHospitalCard({super.key, required this.label, required this.imageName});
  final String label, imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: MColors.thirtyColor, width: 1),
      ),
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Positioned(
            left: 116,
            top: -32,
            child: Container(
              width: 78,
              height: 78,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0XFFFDF1F1)),
            ),
          ),
          Positioned(
            top: 14,
            left: 14,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 14,
              children: [
                Image.asset(imageName.trim().toString(), width: 61.96, height: 36, fit: BoxFit.cover),

                Text(label.toString(), style: MTextTheme.bodyLarge),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('See maps', style: MTextTheme.bodyMedium.copyWith(color: MColors.textThirtyColor)),
                    Image.asset('assets/icons/right_hand.png', width: 16, height: 16, color: MColors.textThirtyColor),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
