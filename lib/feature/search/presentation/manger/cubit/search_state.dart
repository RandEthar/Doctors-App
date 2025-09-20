part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<DoctorEntity> doctors;
  SearchSuccess(this.doctors);
}

final class SearchEmpty extends SearchState {}

final class SearchFailure extends SearchState {
  final String message;
  SearchFailure(this.message);
}

