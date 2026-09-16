import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Independent, reusable input field widget.
///
/// Sizing is done via `flutter_screenutil` (.w / .h / .r / .sp) so the field
/// scales correctly across device sizes. Make sure `ScreenUtilInit` wraps
/// your `MaterialApp` before this widget is used, e.g.:
///
/// ```dart
/// ScreenUtilInit(
///   designSize: const Size(375, 812), // match your Figma frame
///   builder: (context, child) => MaterialApp(home: child),
///   child: const RegisterScreen(),
/// );
/// ```
///
/// Every visual property (border, radius, padding, hint style, text style,
/// fill color, height, gap) is OPTIONAL. Pass nothing and it renders exactly
/// to the Figma default spec below, scaled with ScreenUtil. Pass any of them
/// and only that piece is overridden — everything else keeps inheriting
/// the default.
///
/// Figma default spec (unscaled design values):
/// - Size: 372 x 44 (fixed height, width flexes to parent)
/// - Radius: 6
/// - Border: 1px, color #A6CFD5
/// - Padding: top 12, right 14, bottom 12, left 14
/// - Gap (between leading/content/trailing): 16
class CustomField extends StatefulWidget {
  const CustomField({
    super.key,
    this.hintText,
    this.controller,
    this.leading,
    this.trailing,
    this.border,
    this.focusedBorder,
    this.height,
    this.borderRadius,
    this.gap,
    this.padding,
    this.fillColor,
    this.disabledFillColor,
    this.keyboardType,
    this.obscureText = false,
    this.readOnly = false,
    this.enabled = true,
    this.onTap,
    this.onChanged,
    this.hintStyle,
    this.textStyle,
  });

  // ---- Default (Figma) values, used whenever a property isn't passed ----
  // These are getters (not const) because ScreenUtil's .w/.h/.r/.sp read
  // from ScreenUtil() at call time, once ScreenUtilInit has run.
  static double get kDefaultHeight => 44.h;
  static BorderRadius get kDefaultRadius => BorderRadius.all(Radius.circular(6.r));
  static double get kDefaultGap => 16.w;
  static EdgeInsets get kDefaultPadding => EdgeInsets.fromLTRB(14.w, 12.h, 14.w, 12.h);
  static const Color kDefaultBorderColor = Color(0xFFA6CFD5);
  static const Color kDefaultFocusedBorderColor = Color(0xFF1B2A6B);
  static const Color kDefaultFillColor = Colors.white;
  static const Color kDefaultDisabledFillColor = Color(0xFFF5F5F5);
  // Border width intentionally NOT scaled with .w — hairline borders (1px)
  // should generally stay crisp at 1 logical pixel across devices.
  static Border get kDefaultBorder => Border.all(color: kDefaultBorderColor, width: 1);
  static Border get kDefaultFocusedBorder => Border.all(color: kDefaultFocusedBorderColor, width: 1);
  static TextStyle get kDefaultTextStyle => TextStyle(fontSize: 14.sp, color: Colors.black87);
  static TextStyle get kDefaultHintStyle => TextStyle(fontSize: 14.sp, color: Colors.grey.shade400);

  final String? hintText;
  final TextEditingController? controller;

  /// Content placed before the text input, e.g. a country-code dropdown.
  final Widget? leading;

  /// Content placed after the text input, e.g. a calendar icon.
  final Widget? trailing;

  /// Full border object (color, width, style — all sides or per-side).
  /// Defaults to `kDefaultBorder` (1px, #A6CFD5) when null.
  final BoxBorder? border;

  /// Border shown while the field is focused.
  /// Defaults to `kDefaultFocusedBorder` when null.
  final BoxBorder? focusedBorder;

  final double? height;
  final BorderRadius? borderRadius;
  final double? gap;
  final EdgeInsets? padding;
  final Color? fillColor;
  final Color? disabledFillColor;

  final TextInputType? keyboardType;
  final bool obscureText;
  final bool readOnly;
  final bool enabled;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;

  /// Style for the placeholder text. Defaults to `kDefaultHintStyle`.
  final TextStyle? hintStyle;

  /// Style for the text the user types. Defaults to `kDefaultTextStyle`.
  final TextStyle? textStyle;

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() => _isFocused = _focusNode.hasFocus);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Every property below: use what the caller passed in, otherwise
    // fall back to the Figma default automatically.
    final double height = widget.height ?? CustomField.kDefaultHeight;
    final BorderRadius radius = widget.borderRadius ?? CustomField.kDefaultRadius;
    final double gap = widget.gap ?? CustomField.kDefaultGap;
    final EdgeInsets padding = widget.padding ?? CustomField.kDefaultPadding;
    final BoxBorder border = widget.border ?? CustomField.kDefaultBorder;
    final BoxBorder focusedBorder = widget.focusedBorder ?? CustomField.kDefaultFocusedBorder;
    final Color fillColor = widget.fillColor ?? CustomField.kDefaultFillColor;
    final Color disabledFillColor = widget.disabledFillColor ?? CustomField.kDefaultDisabledFillColor;
    final TextStyle textStyle = widget.textStyle ?? CustomField.kDefaultTextStyle;
    final TextStyle hintStyle = widget.hintStyle ?? CustomField.kDefaultHintStyle;

    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: radius,
        border: _isFocused ? focusedBorder : border,
        color: widget.enabled ? fillColor : disabledFillColor,
      ),
      padding: padding,
      child: Row(
        children: [
          if (widget.leading != null) ...[widget.leading!, SizedBox(width: gap)],
          Expanded(
            child: TextField(
              controller: widget.controller,
              focusNode: _focusNode,
              keyboardType: widget.keyboardType,
              obscureText: widget.obscureText,
              readOnly: widget.readOnly,
              enabled: widget.enabled,
              onTap: widget.onTap,
              onChanged: widget.onChanged,
              style: textStyle,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: hintStyle,
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          if (widget.trailing != null) ...[SizedBox(width: gap), widget.trailing!],
        ],
      ),
    );
  }
}
