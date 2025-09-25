import 'package:animy_clean_arc/core/errors/failures.dart';
import 'package:animy_clean_arc/features/home/data/datasources/anime_series_local_data_source.dart';
import 'package:animy_clean_arc/features/home/domain/entities/anime_series.dart';
import 'package:animy_clean_arc/features/home/domain/repositories/anime_repositorie.dart';
import 'package:dartz/dartz.dart';

class AnimeSeriesRepositoryImpl implements AnimeSeriesRepository {
  final AnimeSeriesLocalDataSource serieslocalDataSource;

  AnimeSeriesRepositoryImpl({required this.serieslocalDataSource});

  @override
  Future<Either<Failure, List<AnimeSeriesEntities>>> getAnimeSeries() async {
    try {
      final result = await serieslocalDataSource.getAnimeSeries();
      return Right(result);
    } catch (e) {
      return Left(LocalFailure());
    }
  }
}
