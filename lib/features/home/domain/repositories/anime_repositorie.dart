import 'package:animy_clean_arc/core/errors/failures.dart';
import 'package:animy_clean_arc/features/home/domain/entities/anime_character.dart';
import 'package:animy_clean_arc/features/home/domain/entities/anime_series.dart';
import 'package:dartz/dartz.dart';

abstract class AnimeSeriesRepository {
  Future<Either<Failure, List<AnimeSeriesEntities>>> getAnimeSeries();
}

abstract class AnimeCharactersRepository {
  Future<Either<Failure, List<AnimeCharacterEntities>>> getAnimeCharacters();
}
