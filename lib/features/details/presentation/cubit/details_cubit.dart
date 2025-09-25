import 'package:animy_clean_arc/core/usecase/usecase.dart';
import 'package:animy_clean_arc/features/details/data/datasources/details_local_data_sourse.dart';
import 'package:animy_clean_arc/features/details/data/repositories/details_repositorie_impl.dart';
import 'package:animy_clean_arc/features/details/domain/entities/anime_details_entities.dart';
import 'package:animy_clean_arc/features/details/domain/usecases/get_anime_details.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final GetAnimeDetails getAnimeDetails = GetAnimeDetails(
    detailsRepository: DetailsRepositoryImpl(
      detailsLocalDataSourseImpl: DetailsLocalDataSourseImpl(),
    ),
  );
  DetailsCubit() : super(DetailsInitial());

  Future<void> getDetails() async {
    final details = await getAnimeDetails(NoParams());
    details.fold(
      (failer) => emit(DetailsError("Error")),
      (details) => emit(DetailsLoaded(details)),
    );
  }
}
