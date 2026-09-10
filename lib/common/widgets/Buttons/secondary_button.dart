import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/theme/widget/text_theme.dart';

class MSButton extends StatelessWidget {
  const MSButton({super.key, required this.label, this.pressed, this.borderColor = MColors.primaryColor});

  final String label;
  final VoidCallback? pressed;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pressed,
      child: Container(
        width: double.infinity,
        height: 51,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          label.toString(),
          style: TextStyle(fontFamily: 'Khula', fontWeight: FontWeight.w400, fontSize: 14, color: MColors.primaryColor),
        ),
      ),
    );
  }
}

/*
----------------[Description]---------------
--> Background color :  white
---> label  color :  primary color

 */

class MSButton2 extends StatelessWidget {
  const MSButton2({super.key, required this.label, this.callback, this.textStyle, this.buttonStyle});

  final String label;
  final VoidCallback? callback;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    final TextStyle defaultTextStyle = MTextTheme.semiBold.copyWith(color: MColors.primaryColor, fontSize: 14.w);

    final ButtonStyle defaultButtonStyle = ButtonStyle(
      side: WidgetStatePropertyAll(BorderSide(width: 1, color: MColors.secondaryColor)),
      backgroundColor: WidgetStatePropertyAll(Colors.white),
      splashFactory: InkRipple.splashFactory,
    );

    // TextStyle.merge: argument wins -> correct as-is
    final TextStyle improvedTextStyle = defaultTextStyle.merge(textStyle);

    // ButtonStyle.merge: `this` wins, argument is fallback.
    // So call merge ON the passed-in style, falling back to defaults.
    final ButtonStyle improvedButtonStyle = (buttonStyle ?? const ButtonStyle()).merge(defaultButtonStyle);

    return ElevatedButton(
      style: improvedButtonStyle,
      onPressed: callback,
      child: Text(label, style: improvedTextStyle),
    );
  }
}
