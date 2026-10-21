import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, this.hintText});
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: hintText ?? 'Search product or store',
      hintStyle: WidgetStatePropertyAll(
        TextStyle(color: MColors.textThirtyColor, fontSize: 14.sp, fontFamily: 'Khula'),
      ),
      leading: Icon(Icons.search, color: MColors.textThirtyColor, size: 22.sp),
      elevation: const WidgetStatePropertyAll(0),
      backgroundColor: const WidgetStatePropertyAll(Color(0xFFF9F9F9)),
      side: WidgetStatePropertyAll(BorderSide(color: MColors.thirtyColor, width: 1.w)),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r))),
    );
  }
}
