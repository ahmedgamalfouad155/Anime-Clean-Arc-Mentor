import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:flutter/material.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({super.key, required this.rate});
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      right: 14,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Center(
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: context.appColors.primaryPurple,
                size: 13,
              ),
              const SizedBox(width: 3),
              Text(
                rate,
                style: AppStyles.textStyle12(
                  context,
                ).copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
