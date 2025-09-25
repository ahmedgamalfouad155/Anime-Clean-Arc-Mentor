import 'package:animy_clean_arc/core/theme/styles.dart';
import 'package:animy_clean_arc/core/utils/media_query_values.dart';
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
            child: SizedBox(
              height: context.height / 2.2,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: state.animeSeries.length,
                itemBuilder: (context, index) {
                  final data = state.animeSeries[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            // width: context.width / 2.3,
                            // height: context.height / 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                data.seriesImage,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          RateWidget(rate: data.seriesRating),
                        ],
                      ),
                      Text(
                        data.seriesName,
                        style: AppStyles.textStyle14(context),
                      ),
                      Text(
                        data.seriesType,
                        style: AppStyles.textStyle12(context),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 14);
                },
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
