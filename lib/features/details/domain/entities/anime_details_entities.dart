import 'package:equatable/equatable.dart';

class AnimeDetailsEntities extends Equatable {
  final String image1;
  final String image2;
  final String views;
  final String claps;
  final String seasons;
  final String cnotent;

  const AnimeDetailsEntities({
    required this.image1,
    required this.image2,
    required this.views,
    required this.claps,
    required this.seasons,
    required this.cnotent,
  });
  @override
  List<Object?> get props => [image1, image2, views, claps, seasons, cnotent];
}
