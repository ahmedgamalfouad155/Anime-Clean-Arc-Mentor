import 'package:animy_clean_arc/features/home/presentation/cubit/filter_cubit/filter_cubit.dart';
import 'package:animy_clean_arc/features/home/presentation/widgets/filter_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfFilterItemWidget extends StatelessWidget {
  const ListOfFilterItemWidget({super.key});

  final List<String> filters = const [
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Top Rated',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, int>(
      builder: (context, selectedIndex) {
        return SizedBox(
          height: 35,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return FilterItemWidget(
                title: filters[index],
                isSelected: selectedIndex == index,
                onTap: () => context.read<FilterCubit>().selectFilter(index),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: filters.length,
          ),
        );
      },
    );
  }
}
