import 'package:animy_clean_arc/features/home/data/dummy_data/dummy_anime_series.dart';
import 'package:animy_clean_arc/features/home/data/models/anime_series_model.dart';

abstract class AnimeSeriesLocalDataSource {
  Future<List<AnimeSeriesModel>> getAnimeSeries();
}

class AnimeSeriesLocalDataSourceImpl extends AnimeSeriesLocalDataSource {
  @override
  Future<List<AnimeSeriesModel>> getAnimeSeries() async { 
    return Future.value(dummyAnimeSeries);
  }
}