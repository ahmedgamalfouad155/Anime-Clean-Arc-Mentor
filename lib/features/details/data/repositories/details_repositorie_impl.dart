import 'package:animy_clean_arc/core/errors/failures.dart';
import 'package:animy_clean_arc/features/details/data/datasources/details_local_data_sourse.dart';
import 'package:animy_clean_arc/features/details/domain/entities/anime_details_entities.dart';
import 'package:animy_clean_arc/features/details/domain/repositories/details_repositorie.dart';
import 'package:dartz/dartz.dart';

class DetailsRepositoryImpl implements DetailsRepository {
  final DetailsLocalDataSourseImpl detailsLocalDataSourseImpl;

  DetailsRepositoryImpl({required this.detailsLocalDataSourseImpl});

  @override
  Future<Either<Failure, AnimeDetailsEntities>> getDetails() async {
    try {
      final result = await detailsLocalDataSourseImpl.getDetails();
      return Right(result);
    } catch (e) {
      return Left(LocalFailure());
    }
  }
}
