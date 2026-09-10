import 'package:flutter/material.dart';
// import 'package:mcare_copy2/utils/theme/widget/text_theme.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/theme/widget/text_theme_screen_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///-----------------[Without Scren_util]-----------------------------
/*
class CustomDropdownField<T> extends StatelessWidget {
  final T? value;
  final String hint;
  final List<T> items;
  final String Function(T) itemLabel;
  final ValueChanged<T?> onChanged;

  // ---- Customizable styles (override these when using the widget) ----

  /// Style of the text shown in the CLOSED field once an item is selected.
  /// Rendered via `selectedItemBuilder`, NOT via `items` — this is a
  /// separate widget tree from the menu list, so it must be styled here
  /// independently. If null, falls back to `MTextTheme.semiBold` +
  /// `MColors.primaryColor` (see `effectiveSelectedTextStyle` in build()).
  final TextStyle? selectedTextStyle;

  /// Style of the placeholder text (e.g. "Choose") before anything is
  /// picked. Applied via `InputDecoration.hintStyle`. If null, falls back
  /// to `MTextTheme.labelMedium` + `MColors.textThirtyColor`.
  final TextStyle? hintStyle;

  /// Style applied to each item's text inside the OPEN dropdown menu list.
  /// This is separate from `selectedTextStyle` — Flutter does NOT reuse
  /// this widget for the closed-field display, so changing this only
  /// affects how items look while the menu is open.
  final TextStyle itemTextStyle;

  /// Border color when the field is enabled but NOT focused.
  final Color borderColor;

  /// Border color when the field IS focused (tapped / menu open).
  final Color focusedBorderColor;

  /// Corner radius applied to BOTH the field's border and the dropdown
  /// menu popup (`DropdownButtonFormField.borderRadius`), so they stay
  /// visually consistent.
  final double borderRadius;

  /// Background fill color of the field itself (not the popup menu).
  final Color fillColor;

  /// Trailing icon shown on the right side of the field.
  /// Defaults to a simple down-chevron; pass your own `Icon`/`SvgPicture`
  /// to match a different design.
  final Widget icon;

  const CustomDropdownField({
    super.key,
    required this.hint,
    required this.items,
    required this.itemLabel,
    required this.onChanged,
    this.value,
    this.selectedTextStyle,
    this.hintStyle,
    this.itemTextStyle = const TextStyle(fontFamily: 'Khula', fontSize: 14, color: Colors.black87),
    this.borderColor = MColors.secondaryColor,
    this.focusedBorderColor = MColors.secondaryColor,
    this.borderRadius = 12,
    this.fillColor = Colors.white,
    this.icon = const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black54),
  });

  @override
  Widget build(BuildContext context) {
    // Resolved here (not as constructor defaults) because MTextTheme styles
    // aren't compile-time constants — Dart requires optional parameter
    // defaults to be `const`, so theme-based fallbacks must be computed
    // inside build() instead of in the constructor signature.
    final effectiveHintStyle = hintStyle ?? MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor);
    final effectiveSelectedTextStyle = selectedTextStyle ?? MTextTheme.semiBold.copyWith(color: MColors.primaryColor);

    return DropdownButtonFormField<T>(
      value: value,
      isExpanded: true,
      icon: icon,

      // Radius of the popup menu that opens when tapped.
      borderRadius: BorderRadius.circular(borderRadius),

      // This `style` is mostly irrelevant since `selectedItemBuilder` below
      // takes over rendering the closed-state text. Kept only as a fallback
      // for edge cases (e.g. before selectedItemBuilder resolves).
      style: effectiveSelectedTextStyle,

      decoration: InputDecoration(
        hintText: hint,
        hintStyle: effectiveHintStyle, // <-- controls "Choose" placeholder style
        filled: true,
        fillColor: fillColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),

        // Border when field is enabled but not focused.
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor, width: 1.2),
        ),

        // Border when field is focused (tapped/open).
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: focusedBorderColor, width: 1.5),
        ),

        // Fallback border (rarely visible, kept in sync with enabledBorder).
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor),
        ),
      ),

      // Menu items — shown ONLY when the dropdown is OPEN.
      // Styled via `itemTextStyle`, independent of the closed-state display.
      items: items.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(itemLabel(item), style: itemTextStyle),
        );
      }).toList(),

      // Separate widget just for the CLOSED field display.
      // Without this, Flutter would reuse the `items` widgets above for the
      // closed state too, making `selectedTextStyle` impossible to apply
      // independently of `itemTextStyle`.
      selectedItemBuilder: (context) {
        return items.map((item) {
          return Align(
            alignment: Alignment.centerLeft,
            child: Text(
              itemLabel(item),
              style: effectiveSelectedTextStyle, // <-- actually applies here
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList();
      },

      onChanged: onChanged,
    );
  }
}
*/

///-----------------[Without Scren_util]-----------------------------
class CustomDropdownField<T> extends StatelessWidget {
  final T? value;
  final String hint;
  final List<T> items;
  final String Function(T) itemLabel;
  final ValueChanged<T?> onChanged;

  /// Selected item text style (closed state)
  final TextStyle? selectedTextStyle;

  /// Hint text style
  final TextStyle? hintStyle;

  /// Dropdown menu item text style
  final TextStyle itemTextStyle;

  /// Border color
  final Color borderColor;

  /// Focused border color
  final Color focusedBorderColor;

  /// Border radius
  final double borderRadius;

  /// Background color
  final Color fillColor;

  /// Trailing icon
  final Widget icon;

  const CustomDropdownField({
    super.key,
    required this.hint,
    required this.items,
    required this.itemLabel,
    required this.onChanged,
    this.value,
    this.selectedTextStyle,
    this.hintStyle,
    this.itemTextStyle = const TextStyle(fontFamily: 'Khula', fontSize: 14, color: Colors.black87),
    this.borderColor = MColors.secondaryColor,
    this.focusedBorderColor = MColors.secondaryColor,
    this.borderRadius = 12,
    this.fillColor = Colors.white,
    this.icon = const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black54),
  });

  @override
  Widget build(BuildContext context) {
    final effectiveHintStyle = hintStyle ?? MTextTheme.labelMedium.copyWith(color: MColors.textThirtyColor);

    final effectiveSelectedTextStyle = selectedTextStyle ?? MTextTheme.semiBold.copyWith(color: MColors.primaryColor);

    return DropdownButtonFormField<T>(
      value: value,
      isExpanded: true,
      icon: icon,

      borderRadius: BorderRadius.circular(borderRadius.r),

      style: effectiveSelectedTextStyle,

      decoration: InputDecoration(
        hintText: hint,
        hintStyle: effectiveHintStyle,
        filled: true,
        fillColor: fillColor,

        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.r),
          borderSide: BorderSide(color: borderColor, width: 1.2.w),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.r),
          borderSide: BorderSide(color: focusedBorderColor, width: 1.5.w),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius.r),
          borderSide: BorderSide(color: borderColor, width: 1.w),
        ),
      ),

      items: items.map((item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(itemLabel(item), style: itemTextStyle.copyWith(fontSize: itemTextStyle.fontSize?.sp)),
        );
      }).toList(),

      selectedItemBuilder: (context) {
        return items.map((item) {
          return Align(
            alignment: Alignment.centerLeft,
            child: Text(itemLabel(item), style: effectiveSelectedTextStyle, overflow: TextOverflow.ellipsis),
          );
        }).toList();
      },

      onChanged: onChanged,
    );
  }
}
