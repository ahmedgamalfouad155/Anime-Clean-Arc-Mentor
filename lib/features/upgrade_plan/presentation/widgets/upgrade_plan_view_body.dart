import 'package:animy_clean_arc/core/constants/images.dart';
import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:animy_clean_arc/core/utils/media_query_values.dart';
import 'package:animy_clean_arc/core/widgets/custom_buton.dart';
import 'package:animy_clean_arc/features/upgrade_plan/presentation/cubit/upgrade_plan_cubit.dart';
import 'package:animy_clean_arc/features/upgrade_plan/presentation/widgets/upgrad_plan_item_widget.dart';
import 'package:animy_clean_arc/features/upgrade_plan/presentation/widgets/upgrade_plan_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpgradePlanViewBody extends StatelessWidget {
  const UpgradePlanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UpgradePlanCubit(),
      child: BlocBuilder<UpgradePlanCubit, int?>(
        builder: (context, selectedIndex) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: context.height / 7),
                  UpgradePlanTextWidget(),
                  Image.asset(
                    AppImages.upgradePlan,
                    height: context.height / 4,
                  ),
                  Text(
                    "Seamless Anime Experience, Ad-Free.",
                    style: AppStyles.textStyle24(context),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Enjoy unlimited anime streaming without interruptions.",
                    textAlign: TextAlign.center,
                    style: AppStyles.textStyle14(context).copyWith(
                      color: context.appColors.primaryGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),

                  UpgradePlanItemWidget(
                    index: 0,
                    title: "Monthly",
                    price: "\$5 USD/ ",
                    period: "Month",
                    description: "Include Family Sharing",
                    image: AppImages.mounthly,
                    isSelected: selectedIndex == 0,
                    onTap: () => context.read<UpgradePlanCubit>().selectPlan(0),
                  ),
                  const SizedBox(height: 10),
                  UpgradePlanItemWidget(
                    index: 1,
                    title: "Annually",
                    price: "\$50 USD/ ",
                    period: "Year",
                    description: "Best Value Plan",
                    image: AppImages.mounthly,
                    isSelected: selectedIndex == 1,
                    onTap: () => context.read<UpgradePlanCubit>().selectPlan(1),
                  ),

                  SizedBox(height: context.height / 14),
                  CustomButton(text: "Upgrade Now", onPressed: () {}),
                  SizedBox(height: context.height / 12),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
