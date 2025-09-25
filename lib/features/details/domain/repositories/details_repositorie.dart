import 'package:animy_clean_arc/core/errors/failures.dart';
import 'package:animy_clean_arc/features/details/domain/entities/anime_details_entities.dart';
import 'package:dartz/dartz.dart';

abstract class DetailsRepository {
  Future<Either<Failure,AnimeDetailsEntities>> getDetails();
}
