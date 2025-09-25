part of 'details_cubit.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();

  @override
  List<Object> get props => [];
}

class DetailsInitial extends DetailsState {}

class DetailsLoading extends DetailsState {}

class DetailsLoaded extends DetailsState {
  final AnimeDetailsEntities detailsEntity;

  const DetailsLoaded(this.detailsEntity);

  @override
  List<Object> get props => [detailsEntity];
}

class DetailsError extends DetailsState {
  final String error;

  const DetailsError(this.error);

  @override
  List<Object> get props => [error];
}
