import 'package:animy_clean_arc/core/constants/images.dart';
import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:flutter/material.dart';

class AnimeContentTextWidget extends StatelessWidget {
  const AnimeContentTextWidget({
    super.key,
    required this.content, 
  });
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AppImages.icon4),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            content,
            style: AppStyles.textStyle14(
              context,
            ).copyWith(color: Color(0xffCBC4C4), fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
