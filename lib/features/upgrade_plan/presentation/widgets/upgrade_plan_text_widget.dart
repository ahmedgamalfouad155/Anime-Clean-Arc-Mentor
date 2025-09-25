import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:animy_clean_arc/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class UpgradePlanTextWidget extends StatelessWidget {
  const UpgradePlanTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Upgrade Plan", style: AppStyles.textStyle22(context)),
        SizedBox(width: context.width / 5),
        InkWell(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
            radius: 13,
            backgroundColor: context.appColors.white,
            child: Icon(Icons.close, color: context.appColors.navyBlue),
          ),
        ),
      ],
    );
  }
}
