import 'package:animy_clean_arc/core/errors/failures.dart';
import 'package:animy_clean_arc/core/usecase/usecase.dart';
import 'package:animy_clean_arc/features/home/domain/entities/anime_character.dart';
import 'package:animy_clean_arc/features/home/domain/repositories/anime_repositorie.dart';
import 'package:dartz/dartz.dart';

class GetAnimeCharacters
    implements Usecase<List<AnimeCharacterEntities>, NoParams> {
  final AnimeCharactersRepository animeCharacterRepository;
  GetAnimeCharacters({required this.animeCharacterRepository});
  @override
  Future<Either<Failure, List<AnimeCharacterEntities>>> call(NoParams params) {
    return animeCharacterRepository.getAnimeCharacters();
  }
}
