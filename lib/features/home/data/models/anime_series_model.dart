import 'package:animy_clean_arc/features/home/domain/entities/anime_series.dart';

class AnimeSeriesModel extends AnimeSeriesEntities {
  const AnimeSeriesModel({
    required super.seriesName,
    required super.seriesImage,
    required super.seriesType,
    required super.seriesRating,
  });
}
