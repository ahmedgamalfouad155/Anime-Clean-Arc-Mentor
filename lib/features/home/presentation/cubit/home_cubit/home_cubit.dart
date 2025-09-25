import 'package:animy_clean_arc/core/usecase/usecase.dart';
import 'package:animy_clean_arc/features/home/data/datasources/anime_characters_local_data_sourse.dart';
import 'package:animy_clean_arc/features/home/data/datasources/anime_series_local_data_source.dart';
import 'package:animy_clean_arc/features/home/data/repositories/anime_character_repositorie_impl.dart';
import 'package:animy_clean_arc/features/home/data/repositories/anime_series_repositorie_impl.dart';
import 'package:animy_clean_arc/features/home/domain/entities/anime_character.dart';
import 'package:animy_clean_arc/features/home/domain/entities/anime_series.dart';
import 'package:animy_clean_arc/features/home/domain/usecases/get_anime_characters.dart';
import 'package:animy_clean_arc/features/home/domain/usecases/get_anime_series.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetAnimeSeries getAnimeSeries = GetAnimeSeries(
    animeSeriesRepository: AnimeSeriesRepositoryImpl(
      serieslocalDataSource: AnimeSeriesLocalDataSourceImpl(),
    ),
  );
  final GetAnimeCharacters getAnimeCharacter = GetAnimeCharacters(
    animeCharacterRepository: AnimeCharacterRepositorieImpl(
      charactersLocalDataSource: AnimeCharactersLocalDataSourseImpl(),
    ),
  );
  HomeCubit() : super(HomeInitial()); 

  Future<void> getSeries() async {
    emit(AnimeSeriesLoading());
    final series = await getAnimeSeries(NoParams());
    emit(
      series.fold(
        (failer) => AnimeSeriesError("Error"),
        (animeSeries) => AnimeSeriesLoaded(animeSeries: animeSeries),
      ),
    );
  }

  Future<void> getCharacters() async {
    emit(AnimeCharacterLoading());
    final characters = await getAnimeCharacter(NoParams());
    emit(
      characters.fold(
        (faliler) => AnimeCharacterError("Error"),
        (animeCharacters) =>
            AnimeCharacterLoaded(animeCharacter: animeCharacters),
      ),
    );
  }
}
