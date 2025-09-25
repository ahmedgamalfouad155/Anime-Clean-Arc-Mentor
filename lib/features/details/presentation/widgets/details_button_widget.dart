import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:flutter/material.dart';

class DetailsButtonWidget extends StatelessWidget {
  const DetailsButtonWidget({super.key, required this.titlel});
  final String titlel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color(0xff554b71),
        boxShadow: [
          BoxShadow(
            color: context.appColors.black.withAlpha((0.4 * 255).toInt()),
            offset: const Offset(-2, 4),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Text(
        titlel,
        style: AppStyles.textStyle12(
          context,
        ).copyWith(color: context.appColors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
