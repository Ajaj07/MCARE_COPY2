import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcare_copy2/utils/constants/colors.dart';

import '../../../utils/theme/widget/text_theme_screen_util.dart';
/*
class MReviewCard extends StatelessWidget {
  const MReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 5)],
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min, // Hug height
        children: [
          Row(
            children: [
              CircleAvatar(radius: 28, backgroundImage: AssetImage('assets/images/chat/doc_details1.jpg')),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  spacing: 7,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Emily Johnson', style: MTextTheme.regular.copyWith(fontSize: 14)),
                    Text(
                      '1  day ago',
                      style: MTextTheme.regular.copyWith(fontSize: 10, color: MColors.textSecondaryColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 1,
                      children: [
                        Icon(Icons.star, color: Color(0XFFFFA740), size: 14),
                        Icon(Icons.star, color: Color(0XFFFFA740), size: 14),
                        Icon(Icons.star, color: Color(0XFFFFA740), size: 14),
                        Icon(Icons.star, color: Color(0XFFFFA740), size: 14),
                        Icon(Icons.star_border, color: Color(0XFFFFA740), size: 14),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16), // matches Figma "gap: 16"
          // More View Text { style : Regular[14,400,textSecondary] for more text style : semibold[14,600,primary] }
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'My consultation with Dr. Luca Rossi was excellent. He\'s knowledgeable, attentive, and provid...  ',
                  style: MTextTheme.regular.copyWith(
                    fontSize: 14,
                    height: 1.5, // 150% line height
                    letterSpacing: 0.14, // 1% of 14px
                  ),
                ),
                TextSpan(
                  text: 'More view',
                  style: MTextTheme.semiBold.copyWith(
                    fontSize: 14,
                    height: 1.5,
                    letterSpacing: 0.14,
                    color: MColors.primaryColor,
                  ),
                  // recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
*/

import 'package:flutter/gestures.dart'; // needed for TapGestureRecognizer
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mcare_copy2/utils/constants/colors.dart';

// import '../../../utils/theme/widget/text_theme_screen_util.dart';

/// Review card matching Figma spec (node 87-2499 / 87-2500 / 87-2517 / 87-2518):
/// - Frame: Hug 269 x Hug 163, radius 12, padding 20, gap 16, white bg
/// - Shadow: X 4, Y 4, Blur 10, Spread 0, #000000 @ 5% opacity
/// - Profile row: Horizontal, Hug 156 x 56, gap 12
/// - Review text: Khula Regular 14, line-height 150%, letter-spacing 1%
/// - "More view": Khula SemiBold 14, primary color
class MReviewCard extends StatelessWidget {
  const MReviewCard({
    super.key,
    required this.name,
    required this.avatarAsset,
    required this.daysAgo,
    required this.rating,
    required this.reviewText,
    this.onMoreViewTap,
  }) : assert(rating >= 0 && rating <= 5, 'rating must be between 0 and 5');

  final String name;
  final String avatarAsset;
  final String daysAgo; // e.g. "1 day ago" / "8 days ago"
  final double rating; // 0-5, supports decimals (e.g. 4.0)
  final String reviewText;
  final VoidCallback? onMoreViewTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      // IMPROVEMENT: width fixed at Figma's 269, but height is NOT fixed —
      // Column below uses mainAxisSize.min so the card "hugs" its content
      // exactly like the Figma frame (Hug 163px), instead of clipping/
      // leaving dead space at a hardcoded 250.
      width: 269.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            // IMPROVEMENT: Figma shadow is #000000 at 5% opacity, not solid
            // black. Solid black with blurRadius 5 was way too heavy/dark
            // compared to the subtle drop shadow in the design.
            // color: Colors.black.withValues(alpha: 0.05),
            // offset: Offset(4.w, 4.h), // Figma: X 4, Y 4
            //blurRadius: 10.r, // Figma: Blur 10
            //spreadRadius: 0, // Figma: Spread 0
            color: Colors.black.withAlpha(125),
            offset: Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: EdgeInsets.all(15.w), // IMPROVEMENT: scaled with .w (was raw 20)
      child: Column(
        mainAxisSize: MainAxisSize.min, // makes the Container "Hug" height
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---------- Profile row (Figma: Horizontal, Hug 156x56, gap 12) ----------
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 28.r, // 56px diameter, matches Figma Hug height 56
                backgroundImage: AssetImage(avatarAsset),
              ),
              SizedBox(width: 12.w), // Figma gap: 12
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: MTextTheme.regular.copyWith(fontSize: 14.sp),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 7.h), // replaces Column's `spacing: 7`
                    Text(
                      daysAgo,
                      style: MTextTheme.regular.copyWith(fontSize: 10.sp, color: MColors.textSecondaryColor),
                    ),
                    SizedBox(height: 7.h),
                    _StarRating(rating: rating), // IMPROVEMENT: computed, not hardcoded
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h), // Figma frame gap: 16 (scaled, was raw 16)
          // ---------- Review text + "More view" ----------
          // Figma: Regular[14,400,textSecondary] + SemiBold[14,600,primary]
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '$reviewText  ',
                  style: MTextTheme.regular.copyWith(
                    fontSize: 14.sp,
                    height: 1.5, // 150% line height
                    letterSpacing: 14 * 0.01, // 1% of font size — derived, not magic number
                  ),
                ),
                TextSpan(
                  text: 'More view',
                  style: MTextTheme.semiBold.copyWith(
                    fontSize: 14.sp,
                    height: 1.5,
                    letterSpacing: 14 * 0.01,
                    color: MColors.primaryColor,
                  ),
                  recognizer: onMoreViewTap != null ? (TapGestureRecognizer()..onTap = onMoreViewTap) : null,
                ),
              ],
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

/// IMPROVEMENT: extracted star rating into its own widget instead of
/// hardcoding 5 Icon widgets inline. Now driven by a `rating` value (0-5),
/// so 3.5 stars, 4 stars, etc. all render correctly without editing the card.
class _StarRating extends StatelessWidget {
  const _StarRating({required this.rating});

  final double rating;
  static const int _maxStars = 5;
  static const Color _starColor = Color(0xFFFFA740);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(_maxStars, (index) {
        final starValue = index + 1;
        IconData icon;
        if (rating >= starValue) {
          icon = Icons.star;
        } else if (rating > starValue - 1) {
          icon = Icons.star_half; // supports half-star ratings
        } else {
          icon = Icons.star_border;
        }
        return Padding(
          padding: EdgeInsets.only(right: index == _maxStars - 1 ? 0 : 1.w),
          child: Icon(icon, color: _starColor, size: 14.sp),
        );
      }),
    );
  }
}
