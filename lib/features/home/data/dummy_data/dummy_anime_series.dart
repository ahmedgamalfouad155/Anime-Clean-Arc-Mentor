import 'package:animy_clean_arc/core/constants/images.dart';

import '../models/anime_series_model.dart';
import '../models/anime_character_model.dart';

final dummyAnimeSeries = [
  AnimeSeriesModel(
    seriesName: 'Detective Conan',
    seriesImage: AppImages.anime1,
    seriesType: 'Mystery',
    seriesRating: '5.1',
  ),
  AnimeSeriesModel(
    seriesName: 'Hunter x Hunter',
    seriesImage: AppImages.anime2,
    seriesType: 'Adventure',
    seriesRating: '4.7',
  ),
];

final dummyCharacters = [
  AnimeCharacterModel(
    name: 'Gon Freecss',
    image: AppImages.character1,
    seriesName: 'Hunter x Hunter',
  ),
  AnimeCharacterModel(
    name: 'Naruto Uzumaki',
    image: AppImages.character2,
    seriesName: 'Naruto',
  ),
  AnimeCharacterModel(
    name: 'Luffy',
    image: AppImages.character3,
    seriesName: 'One Piece',
  ),
  
];
