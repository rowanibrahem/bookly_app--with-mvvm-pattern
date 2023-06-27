import 'package:bookly_app/core/utilies/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.backgroundColor,
      required this.textColor,
       this.borderRadius,
        required this.text,
         this.fontSized
      })
      : super(key: key);

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSized;
final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(
              12,
            ),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSized,
          ),
        ),
      ),
    );
  }
}
