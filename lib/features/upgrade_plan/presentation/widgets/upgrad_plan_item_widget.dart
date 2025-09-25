import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:animy_clean_arc/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class UpgradePlanItemWidget extends StatelessWidget {
  const UpgradePlanItemWidget({
    super.key,
    required this.index,
    required this.title,
    required this.price,
    required this.period,
    required this.description,
    required this.image,
    required this.isSelected,
    required this.onTap,
  });

  final int index;
  final String title;
  final String price;
  final String period;
  final String description;
  final String image;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.width,
        height: context.height / 7,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected
              ? context.appColors.navyBlue
              : context.appColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: AppStyles.textStyle16(context).copyWith(
                    color: isSelected
                        ? context.appColors.white
                        : context.appColors.navyBlue,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: price,
                        style: AppStyles.textStyle14(context).copyWith(
                          color: isSelected
                              ? context.appColors.white
                              : context.appColors.navyBlue,
                        ),
                      ),
                      TextSpan(
                        text: period,
                        style: AppStyles.textStyle14(
                          context,
                        ).copyWith(color: context.appColors.softPurple),
                      ),
                    ],
                  ),
                ),
                Text(
                  description,
                  style: AppStyles.textStyle12(
                    context,
                  ).copyWith(color: context.appColors.softPurple),
                ),
              ],
            ),
            Checkbox(
              value: isSelected,
              onChanged: (_) => onTap(),
              shape: const CircleBorder(),
              checkColor: context.appColors.white,
              activeColor: context.appColors.primaryPurple,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
      ),
    );
  }
}
