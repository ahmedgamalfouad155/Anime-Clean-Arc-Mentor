import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:animy_clean_arc/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class DetailsButtonNavigationWidget extends StatelessWidget {
  const DetailsButtonNavigationWidget({
    super.key,
    required this.titlel,
    required this.image,
    this.width,
    this.color,
  });
  final String titlel, image;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width / 2.3,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: color ?? Color(0xff554b71),
        boxShadow: [
          BoxShadow(
            color: context.appColors.black.withAlpha((0.4 * 255).toInt()),
            offset: const Offset(-2, 4),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(width: 5),
          Text(
            titlel,
            style: AppStyles.textStyle12(context).copyWith(
              color: context.appColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
