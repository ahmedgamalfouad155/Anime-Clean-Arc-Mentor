import 'package:animy_clean_arc/core/errors/failures.dart';
import 'package:animy_clean_arc/core/usecase/usecase.dart';
import 'package:animy_clean_arc/features/details/domain/entities/anime_details_entities.dart';
import 'package:animy_clean_arc/features/details/domain/repositories/details_repositorie.dart';
import 'package:dartz/dartz.dart';

class GetAnimeDetails implements Usecase<AnimeDetailsEntities, NoParams> {
  final DetailsRepository detailsRepository;

  GetAnimeDetails({required this.detailsRepository});

  @override
  Future<Either<Failure, AnimeDetailsEntities>> call(NoParams params) {
    return detailsRepository.getDetails();
  }
}
