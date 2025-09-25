import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:animy_clean_arc/core/utils/media_query_values.dart';
import 'package:animy_clean_arc/features/home/presentation/cubit/filter_cubit/filter_cubit.dart';
import 'package:animy_clean_arc/features/home/presentation/cubit/home_cubit/home_cubit.dart';
import 'package:animy_clean_arc/features/home/presentation/widgets/list_of_anime_characters.dart';
import 'package:animy_clean_arc/features/home/presentation/widgets/list_of_anime_movie.dart';
import 'package:animy_clean_arc/features/home/presentation/widgets/list_of_filter_item_widget.dart';
import 'package:animy_clean_arc/features/upgrade_plan/presentation/view/upgrade_plan_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 20, top: context.height / 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Where Anime Comes Alive',
              style: AppStyles.textStyle24(context),
            ),
            const SizedBox(height: 24),
            BlocProvider(
              create: (context) => FilterCubit(),
              child: ListOfFilterItemWidget(),
            ),
            const SizedBox(height: 20),
            BlocProvider(
              create: (context) => HomeCubit()..getSeries(),
              child: ListOfAnimeSeries(),
            ),
            const SizedBox(height: 24),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UpgradePlanView(),
                ),
              ),
              child: Text(
                'Top Characters',
                style: AppStyles.textStyle24(context),
              ),
            ),
            const SizedBox(height: 24),
            BlocProvider(
              create: (context) => HomeCubit()..getCharacters(),
              child: ListOfAnimeCharacters(),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
