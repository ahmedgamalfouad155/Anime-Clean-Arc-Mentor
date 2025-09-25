import 'package:animy_clean_arc/core/errors/failures.dart';
import 'package:animy_clean_arc/core/usecase/usecase.dart';
import 'package:animy_clean_arc/features/home/domain/entities/anime_series.dart';
import 'package:animy_clean_arc/features/home/domain/repositories/anime_repositorie.dart';
import 'package:dartz/dartz.dart';

class GetAnimeSeries implements Usecase<List<AnimeSeriesEntities>, NoParams> {
  final AnimeSeriesRepository animeSeriesRepository;

  GetAnimeSeries({required this.animeSeriesRepository});
  @override
  Future<Either<Failure, List<AnimeSeriesEntities>>> call(
    NoParams params,
  ) async {
    return await animeSeriesRepository.getAnimeSeries();
  }
}
