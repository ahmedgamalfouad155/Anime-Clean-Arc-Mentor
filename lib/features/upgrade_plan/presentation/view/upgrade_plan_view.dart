import 'package:animy_clean_arc/core/constants/images.dart';
import 'package:animy_clean_arc/core/utils/media_query_values.dart';
import 'package:animy_clean_arc/features/upgrade_plan/presentation/widgets/upgrade_plan_view_body.dart';
import 'package:flutter/material.dart';

class UpgradePlanView extends StatelessWidget {
  const UpgradePlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 176, 166, 225),
                  Color(0xFFD3D6FF),
                  Color.fromARGB(255, 224, 222, 237),
                  Color.fromARGB(255, 250, 250, 252),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.3, 0.6, 1.0],
              ),
            ),
          ),

          Positioned(
            top: context.height * 0.1,
            right: 0,
            child: Image.asset(
              AppImages.star3,
              width: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              AppImages.star2,
              width: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.contain,
            ),
          ),
          UpgradePlanViewBody(),
        ],
      ),
    );
  }
}
