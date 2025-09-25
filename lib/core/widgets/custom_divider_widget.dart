import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(color: context.appColors.primaryGrey, thickness: .5);
  }
}
