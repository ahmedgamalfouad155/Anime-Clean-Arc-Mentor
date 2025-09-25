import 'package:animy_clean_arc/core/constants/images.dart';
import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:animy_clean_arc/features/details/presentation/cubit/details_cubit.dart';
import 'package:animy_clean_arc/features/details/presentation/widgets/details_button_navigation_widget.dart';
import 'package:animy_clean_arc/features/details/presentation/widgets/dtails_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF18153F),
                  Color.fromARGB(255, 80, 54, 112),
                  Color(0xFFEFEFFE),
                  Color(0xFFF9F9FC),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topCenter,
                stops: [0.1, 0.3, .9, 9.0],
              ),
            ),
          ),
          BlocProvider(
            create: (context) => DetailsCubit()..getDetails(),
            child: DetailsViewBody(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(18.0),
        color: context.appColors.navyBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DetailsButtonNavigationWidget(
              image: AppImages.icon5,
              titlel: 'preview',
            ),
            DetailsButtonNavigationWidget(
              image: AppImages.icon3,
              titlel: 'Watch Now',
              color: context.appColors.primaryPurple,
            ),
          ],
        ),
      ),
    );
  }
}
