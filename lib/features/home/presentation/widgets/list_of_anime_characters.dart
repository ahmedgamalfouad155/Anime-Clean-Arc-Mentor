import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:animy_clean_arc/core/utils/media_query_values.dart';
import 'package:animy_clean_arc/features/home/presentation/cubit/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfAnimeCharacters extends StatelessWidget {
  const ListOfAnimeCharacters({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is AnimeCharacterLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is AnimeCharacterError) {
          return Center(child: Text(state.message));
        }
        if (state is AnimeCharacterLoaded) {
          return SizedBox(
            height: context.height / 4.5,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final data = state.animeCharacter[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(data.image),
                    Text(data.name, style: AppStyles.textStyle16(context)),
                    Text(
                      data.seriesName,
                      style: AppStyles.textStyle14(
                        context,
                      ).copyWith(color: context.appColors.primaryGrey),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: state.animeCharacter.length,
            ),
          );
        }
        return const Text("Something went wrong");
      },
    );
  }
}
