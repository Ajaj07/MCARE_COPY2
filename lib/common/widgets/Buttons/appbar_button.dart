import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/sizes.dart';

class AppbarButton extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final VoidCallback? onPressed;
  final double? size;

  const AppbarButton({super.key, required this.icon, this.color, this.onPressed, this.size});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      // Using ScreenUtil for padding and touch target sizing if needed
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(minWidth: 24.r, minHeight: 24.r),
      icon: Icon(
        icon,
        // Fallback to a default size using screen_util (.r scales it proportionally)
        size: size ?? MSizes.defaultIconsize,
        color: color,
      ),
    );
  }
}
