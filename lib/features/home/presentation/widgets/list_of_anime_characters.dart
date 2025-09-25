import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:animy_clean_arc/core/theme/styles.dart';
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
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(state.animeCharacter.length, (index) {
                final data = state.animeCharacter[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        data.image,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 6),
                      Text(data.name, style: AppStyles.textStyle16(context)),
                      Text(
                        data.seriesName,
                        style: AppStyles.textStyle14(
                          context,
                        ).copyWith(color: context.appColors.primaryGrey),
                      ),
                    ],
                  ),
                );
              }),
            ),
          );
        }
        return const Text("Something went wrong");
      },
    );
  }
}
