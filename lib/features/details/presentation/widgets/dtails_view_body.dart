import 'package:animy_clean_arc/core/widgets/custom_divider_widget.dart';
import 'package:animy_clean_arc/features/details/presentation/cubit/details_cubit.dart';
import 'package:animy_clean_arc/features/details/presentation/widgets/anime_content_text_widget.dart';
import 'package:animy_clean_arc/features/details/presentation/widgets/anime_details_button_section.dart';
import 'package:animy_clean_arc/features/details/presentation/widgets/anime_info_widget.dart';
import 'package:animy_clean_arc/features/details/presentation/widgets/details_images_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        if (state is DetailsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is DetailsError) {
          return Center(child: Text(state.error));
        } else if (state is DetailsLoaded) {
          final data = state.detailsEntity;
          return SingleChildScrollView(
            child: Column(
              children: [
                DetailsImagesWidget(image1: data.image1, image2: data.image2),
                Padding(
                  padding: const EdgeInsets.only(top: 80, right: 18, left: 18),
                  child: Column(
                    children: [
                      AnimeDetailsButtonSection(),
                      const SizedBox(height: 23),
                      CustomDividerWidget(),
                      const SizedBox(height: 10),
                      AnimeInfoWidget(
                        info: state.detailsEntity,
                      ),
                      const SizedBox(height: 10),
                      CustomDividerWidget(),
                      const SizedBox(height: 23),
                      AnimeContentTextWidget(content: data.cnotent),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Text("error");
        }
      },
    );
  }
}
