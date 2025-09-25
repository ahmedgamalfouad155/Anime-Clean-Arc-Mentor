import 'package:animy_clean_arc/core/constants/images.dart';
import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:animy_clean_arc/features/details/domain/entities/anime_details_entities.dart';
import 'package:flutter/material.dart';

class AnimeInfoWidget extends StatelessWidget {
  const AnimeInfoWidget({super.key, required this.info});

  final AnimeDetailsEntities info;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(AppImages.icon1),
            const SizedBox(width: 10),
            Text(
              "${info.views} views",
              style: AppStyles.textStyle12(context).copyWith(
                color: context.appColors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(AppImages.icon2),
            const SizedBox(width: 10),
            Text(
              "${info.claps} clap",
              style: AppStyles.textStyle12(context).copyWith(
                color: context.appColors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset(AppImages.icon3),
            const SizedBox(width: 10),
            Text(
              "${info.seasons} Seasons",
              style: AppStyles.textStyle12(context).copyWith(
                color: context.appColors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
