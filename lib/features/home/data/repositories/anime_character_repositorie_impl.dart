import 'package:animy_clean_arc/core/errors/failures.dart';
import 'package:animy_clean_arc/features/home/data/datasources/anime_characters_local_data_sourse.dart';
import 'package:animy_clean_arc/features/home/domain/entities/anime_character.dart';
import 'package:animy_clean_arc/features/home/domain/repositories/anime_repositorie.dart';
import 'package:dartz/dartz.dart';

class AnimeCharacterRepositorieImpl implements AnimeCharactersRepository {
  final AnimeCharactersLocalDataSourse charactersLocalDataSource;

  AnimeCharacterRepositorieImpl({required this.charactersLocalDataSource});
  @override
  Future<Either<Failure, List<AnimeCharacterEntities>>>
  getAnimeCharacters() async {
    try {
      final result = await charactersLocalDataSource.getCharacters();
      return Right(result);
    } catch (e) {
      return Left(LocalFailure());
    }
  }
}
