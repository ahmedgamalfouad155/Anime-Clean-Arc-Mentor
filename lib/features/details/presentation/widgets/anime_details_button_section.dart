
import 'package:animy_clean_arc/features/details/presentation/widgets/details_button_widget.dart';
import 'package:flutter/material.dart';

class AnimeDetailsButtonSection extends StatelessWidget {
  const AnimeDetailsButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DetailsButtonWidget(titlel: "Dark Fantasy"),
        DetailsButtonWidget(titlel: "Action"),
        DetailsButtonWidget(titlel: "Adventure"),
      ],
    );
  }
}
