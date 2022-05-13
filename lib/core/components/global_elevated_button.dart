import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../extension/context_extension.dart';

class GlobalElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  Color? color;
  Color? textColor;
  Color? borderSideColor;
  bool isThereBorderSide;

  GlobalElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text ,
    this.color,
    this.textColor = Colors.white,
    this.borderSideColor,
    this.isThereBorderSide = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: AutoSizeText(
        text,
        style: TextStyle(color: textColor ?? borderSideColor),
        maxFontSize: 14,
        minFontSize: 13,
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          side: isThereBorderSide
              ? BorderSide(color: borderSideColor ?? Colors.white)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        // maximumSize: Size(
        //   context.getWidth(0.6),
        //   context.getHeight(0.06),
        // ),
        minimumSize: Size(
          context.getWidth(1),
          context.getHeight(0.08),
        ),
      ),
    );
  }
}
