import 'package:flutter/cupertino.dart';
import 'package:animy_clean_arc/core/theme/colors.dart';

abstract class AppStyles {
  static TextStyle textStyle32(BuildContext context) =>
      TextStyle(fontSize: 32, fontWeight: FontWeight.bold);

  static TextStyle textStyle18(BuildContext context) => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: context.appColors.primaryPurple,
  );

  static TextStyle textStyle20(BuildContext context) => TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: context.appColors.navyBlue,
  );

  static TextStyle textStyle14(BuildContext context) => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: context.appColors.navyBlue,
  );

  static TextStyle textStyle16(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: context.appColors.navyBlue,
  );
  static TextStyle textStyle16w400(BuildContext context) => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: context.appColors.navyBlue,
  );

  static TextStyle textStyle24(BuildContext context) => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: context.appColors.black,
  );

  static TextStyle textStyle12(BuildContext context) => TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: context.appColors.primaryGrey,
  );

  static TextStyle textStyle22(BuildContext context) => TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: context.appColors.black,
  );
}
