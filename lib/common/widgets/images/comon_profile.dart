import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class ComonProfile extends StatelessWidget {
  const ComonProfile({
    super.key,
    required this.width,
    required this.height,
    required this.imageName,
    this.borderWidth = 4,
    this.borderColor = MColors.secondaryColor,
    this.boxFit = BoxFit.cover,
  });
  final double width, height;
  final double borderWidth;
  final Color borderColor;
  final String imageName;
  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: ClipOval(child: Image.asset(imageName.trim().toString(), fit: boxFit)),
    );
  }
}
