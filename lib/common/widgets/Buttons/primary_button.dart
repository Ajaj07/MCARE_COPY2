import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/theme/widget/text_theme.dart';

class MPButton extends StatelessWidget {
  MPButton({
    super.key,
    required this.label,
    this.pressed,
    this.backgroundColor = MColors.primaryColor,
    this.textcolor = MColors.whiteColor,
  });

  final String label;
  final VoidCallback? pressed;
  Color backgroundColor;
  Color textcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pressed,
      child: Container(
        width: double.infinity,
        height: 51,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(24)),
        child: Text(
          label.toString(),
          style: TextStyle(fontFamily: 'Khula', fontWeight: FontWeight.w700, fontSize: 16, color: textcolor),
        ),
      ),
    );
  }
}

/*
----------------[Description]---------------
--> Background color : Primary(blue)
---> label  color :  white

 */

class MPButton2 extends StatelessWidget {
  const MPButton2({super.key, required this.label, this.callback, this.textStyle, this.buttonStyle});
  final String label;
  final VoidCallback? callback;
  final TextStyle? textStyle; // 2. Make it nullable with '?'
  final ButtonStyle? buttonStyle;
  @override
  Widget build(BuildContext context) {
    // 3. Fallback to your default style here if textStyle is null
    final TextStyle defaultTextStyle = MTextTheme.semiBold.copyWith(color: Colors.white);
    final ButtonStyle defaultButtonStyle = ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(MColors.primaryColor),
      splashFactory: InkRipple.splashFactory,
    );
    final ButtonStyle improvedButtonStyle = (buttonStyle ?? const ButtonStyle()).merge(defaultButtonStyle);
    return ElevatedButton(
      style: improvedButtonStyle,
      onPressed: callback,
      child: Text(label, style: defaultTextStyle.merge(textStyle)),
    );
  }
}
