import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class CircleProfile extends StatelessWidget {
  const CircleProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: MColors.secondaryColor, width: 4),
      ),
      child: ClipOval(child: Image.asset('assets/images/chat/luci.png', fit: BoxFit.cover)),
    );
  }
}
