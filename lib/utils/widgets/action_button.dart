import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomActionButton extends StatelessWidget {
  final width;
  final String buttonText;
  final Color buttonTextColor;
  final void Function()? onTap;
  final bool isDisabled;
  final Color backgroundColor;
  final String? svgIconName;
  final String? pngIconName;
  final EdgeInsets? iconMargin;
  final Color highlightColor;
  final Color splashColor;

  final bool hasBorder;
  final Color borderColor;
  final Color? iconColor;
  final double? iconHeight;
  final TextStyle? textStyle;
  final double? customHeight;
  final ShapeBorder? customBorder;
  final ShapeBorder? customShape;

  CustomActionButton(
    this.buttonText,
    this.onTap, {
    this.width = 246.0,
    this.iconColor,
    this.isDisabled = false,
    this.svgIconName,
    this.pngIconName,
    this.iconMargin = const EdgeInsets.symmetric(horizontal: 16),
    this.hasBorder = false,
    this.iconHeight,
    this.textStyle,
    this.customHeight,
    this.customShape,
    Color? backgroundColor,
    Color? buttonTextColor,
    Color? highlightColor,
    Color? splashColor,
    Color? borderColor,
    this.customBorder,
  })  : backgroundColor = backgroundColor ?? Colors.white,
        highlightColor = highlightColor ?? Colors.white,
        buttonTextColor = buttonTextColor ?? Colors.black,
        splashColor = splashColor ?? Colors.white,
        borderColor = borderColor ?? Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: customHeight ?? 56,
      padding: EdgeInsets.zero,
      onPressed: isDisabled ? null : onTap,
      disabledColor: Colors.grey,
      highlightElevation: 0,
      elevation: 0,
      color: backgroundColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      shape: !hasBorder
          ? customShape ??
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(68))
          : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(68),
              side: BorderSide(color: borderColor)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
        ),
        height: 40,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (svgIconName != null)
              Container(
                  margin: iconMargin,
                  child: SvgPicture.asset(
                    "assets/icons/$svgIconName.svg",
                    color: iconColor,
                    height: iconHeight,
                  )),
            if (pngIconName != null)
              Container(
                  margin: iconMargin,
                  child: Image.asset(
                    "assets/icons/$pngIconName.png",
                    color: iconColor,
                    height: iconHeight,
                  )),
            Text(
              buttonText,
              style: textStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
