
import 'package:animy_clean_arc/features/home/data/dummy_data/dummy_anime_series.dart';
import 'package:animy_clean_arc/features/home/data/models/anime_character_model.dart';

abstract class AnimeCharactersLocalDataSourse {
  Future<List<AnimeCharacterModel>> getCharacters();
}

class AnimeCharactersLocalDataSourseImpl extends AnimeCharactersLocalDataSourse {
  @override
  Future<List<AnimeCharacterModel>> getCharacters() async {
    return Future.value(dummyCharacters);
  }
}
 