import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

import '../../../../../utils/theme/widget/text_theme_screen_util.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

class PercriptionExpansionTile extends StatelessWidget {
  const PercriptionExpansionTile({super.key});
  Widget _buildOption(String label) {
    return Align(
      alignment: Alignment.centerLeft,

      child: Text(
        label,
        style: MTextTheme.semiBold.copyWith(fontSize: 16.sp, color: MColors.textSecondaryColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return // Outer container = the whole card (border, rounded corners, shadow)
    Container(
      width: double.infinity, // matches Figma spec exactly (372px)
      decoration: BoxDecoration(
        color: Colors.white, // card background color from Figma
        // rounded corners of the card — Figma spec says Radius: 6px
        borderRadius: BorderRadius.circular(6.r),

        // thin light-grey border around the whole card — Figma: 1px, #E3E3E3
        border: Border.all(color: const Color(0xFFE3E3E3), width: 1.r),

        // soft drop shadow under the card (from Figma's "Shadows and blurs" panel)
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06), // low-opacity black = subtle shadow
            blurRadius: 4.r, // how soft/spread out the shadow is
            offset: Offset(0, 2.r), // shifts shadow slightly downward
          ),
        ],
      ),

      child: Theme(
        // ExpansionTile draws a horizontal divider line above & below itself by
        // default (using the app's Divider theme color). We don't want that line
        // in this design, so we override dividerColor to transparent — only for
        // widgets inside this Theme wrapper.
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),

        child: ExpansionTile(
          // By default, ExpansionTile draws its own border/shape when expanded
          // and collapsed (Material default adds a top+bottom border on expand).
          // Setting both to "no side" removes that extra border so only our
          // outer Container's border shows.
          shape: const RoundedRectangleBorder(side: BorderSide.none),
          collapsedShape: const RoundedRectangleBorder(side: BorderSide.none),

          // Padding around the title row (where "Active Recipe" + down arrow sit).
          // Matches Figma: Top 12, Bottom 12, Left/Right 24.
          tilePadding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 6.h),

          // Padding around the expanded children (the list of options below).
          // No "top" value here because SizedBox/spacing between title and
          // first child is handled visually by the tile's own bottom padding.
          childrenPadding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 12.h),

          // The main clickable row shown when collapsed — contains the label
          // text AND the down-arrow icon (arrow is auto-added by ExpansionTile
          // on the trailing/right side; rotates automatically on expand/collapse).
          title: Text('Active Recipe', style: MTextTheme.regular.copyWith(color: MColors.primaryColor)),

          // Aligns the expanded children block to the left (default Flutter
          // behavior can center it in some versions — this forces left-align
          // to match the design).
          expandedAlignment: Alignment.centerLeft,

          // The list shown when the tile is expanded — each option is a
          // simple left-aligned text row, separated by fixed vertical gaps.
          children: [
            _buildOption('Past Prescriptions'),
            SizedBox(height: 8.h), // spacing between each option row
            _buildOption('Recent Prescriptions'),
            SizedBox(height: 8.h),
            _buildOption('Oldest Prescriptions'),
          ],
        ),
      ),
    );
  }
}
