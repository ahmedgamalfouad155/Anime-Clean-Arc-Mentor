part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class AnimeSeriesLoading extends HomeState {}

class AnimeSeriesLoaded extends HomeState {
  final List<AnimeSeriesEntities> animeSeries;

  const AnimeSeriesLoaded({required this.animeSeries});

  @override
  List<Object> get props => [animeSeries];
}

class AnimeSeriesError extends HomeState {
  final String message;

  const AnimeSeriesError(this.message);

  @override
  List<Object> get props => [message];
}

class AnimeCharacterLoading extends HomeState {}

class AnimeCharacterLoaded extends HomeState {
  final List<AnimeCharacterEntities> animeCharacter;

  const AnimeCharacterLoaded({required this.animeCharacter});

  @override
  List<Object> get props => [animeCharacter];
}

class AnimeCharacterError extends HomeState {
  final String message;

  const AnimeCharacterError(this.message);

  @override
  List<Object> get props => [message];
}
