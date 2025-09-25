import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.bacgrouncColor,
    this.textColor,
    this.borderRadius,
    this.width,
    this.height,
    this.borderSideColor,
    required this.text,
    required this.onPressed,
  });
  final void Function()? onPressed;
  Color? bacgrouncColor;
  Color? textColor;
  Color? borderSideColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? MediaQuery.of(context).size.width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: bacgrouncColor ?? context.appColors.primaryPurple,
          side: BorderSide(
            color: borderSideColor ?? context.appColors.primaryPurple,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(39),
          ),
        ),
        child: Text(
          text,
          style: AppStyles.textStyle16(context).copyWith( 
            color: textColor ?? context.appColors.white,
          ),
        ),
      ),
    );
  }
}
