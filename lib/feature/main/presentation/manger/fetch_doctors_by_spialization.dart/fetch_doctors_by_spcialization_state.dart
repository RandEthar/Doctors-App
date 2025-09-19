part of 'fetch_doctors_by_spcialization_cubit.dart';

@immutable
sealed class FetchDoctorsBySpcializationState {}

final class FetchDoctorsBySpcializationInitial extends FetchDoctorsBySpcializationState {}
final class FetchDoctorsBySpcializationLoading extends FetchDoctorsBySpcializationState {}
final class FetchDoctorsBySpcializationSuccess extends FetchDoctorsBySpcializationState {
 final List<DoctorEntity>doctors;

  FetchDoctorsBySpcializationSuccess({required this.doctors});
}
final class FetchDoctorsBySpcializationFailure extends FetchDoctorsBySpcializationState {
  final String errMassage;

  FetchDoctorsBySpcializationFailure({required this.errMassage});
}
