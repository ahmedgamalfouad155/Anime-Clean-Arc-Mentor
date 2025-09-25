import 'package:equatable/equatable.dart';

class AnimeCharacterEntities extends Equatable {
  final String name;
  final String image;
  final String seriesName;

  const AnimeCharacterEntities({
    required this.name,
    required this.image,
    required this.seriesName,
  });
  @override
  List<Object?> get props => [name, image, seriesName];
}
