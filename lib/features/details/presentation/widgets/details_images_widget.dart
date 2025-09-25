import 'package:animy_clean_arc/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class DetailsImagesWidget extends StatelessWidget {
  final String image1, image2;
  const DetailsImagesWidget({
    super.key,
    required this.image1,
    required this.image2,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(image1),
        Positioned(
          left: context.width / 5,
          bottom: -80,
          child: Image.asset(image2),
        ),
      ],
    );
  }
}
