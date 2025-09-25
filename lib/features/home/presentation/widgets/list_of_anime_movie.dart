import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:animy_clean_arc/features/details/presentation/view/details_view.dart';
import 'package:animy_clean_arc/features/home/presentation/cubit/home_cubit/home_cubit.dart';
import 'package:animy_clean_arc/features/home/presentation/widgets/rate_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfAnimeSeries extends StatelessWidget {
  const ListOfAnimeSeries({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is AnimeSeriesLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is AnimeSeriesError) {
          return Center(child: Text(state.message));
        } else if (state is AnimeSeriesLoaded) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailsView()),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(state.animeSeries.length, (index) {
                  final data = state.animeSeries[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min, 
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                data.seriesImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                            RateWidget(rate: data.seriesRating),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Text(
                          data.seriesName,
                          style: AppStyles.textStyle14(context),
                        ),
                        Text(
                          data.seriesType,
                          style: AppStyles.textStyle12(context),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          );
        } else {
          return const Center(child: Text('Something went wrong'));
        }
      },
    );
  }
}
