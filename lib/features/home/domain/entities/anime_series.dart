import 'package:equatable/equatable.dart';

class AnimeSeriesEntities extends Equatable {
  final String seriesName;
  final String seriesImage;
  final String seriesType;
  final String seriesRating;

  const AnimeSeriesEntities({
    required this.seriesName,
    required this.seriesImage,
    required this.seriesType,
    required this.seriesRating,
  });

  @override
  List<Object?> get props => [
    seriesName,
    seriesImage,
    seriesType,
    seriesRating,
  ];
}
