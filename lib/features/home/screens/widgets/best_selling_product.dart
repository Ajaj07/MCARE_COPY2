import 'package:flutter/material.dart';
import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

class BestSellingProductSection extends StatelessWidget {
  const BestSellingProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 81,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          BestSellingTile(imageName: 'assets/images/vacine.png', name: 'Vaccine'),
          SizedBox(width: 16),
          BestSellingTile(imageName: 'assets/images/braces.png', name: 'braces'),
          SizedBox(width: 16),
          BestSellingTile(imageName: 'assets/images/whilechair.jpg', name: 'whilechair'),
          SizedBox(width: 16),
          BestSellingTile(imageName: 'assets/images/mask.jpg', name: 'mask'),
          SizedBox(width: 16),
          BestSellingTile(imageName: 'assets/images/vacine.png', name: 'Vaccine'),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}

class BestSellingTile extends StatelessWidget {
  const BestSellingTile({super.key, required this.imageName, required this.name});
  final String imageName, name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 81,
      height: 81,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(image: AssetImage(imageName.trim()), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color.fromARGB(59, 255, 255, 255), const Color.fromARGB(85, 0, 0, 0)],
                ),
              ),
            ),
          ),

          Positioned(left: 22, bottom: 13, child: Text(name, style: MTextTheme.labelLarge)),
        ],
      ),
    );
  }
}
