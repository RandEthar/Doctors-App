part of 'fetch_all_doctor_cubit.dart';

@immutable
sealed class FetchAllDoctorState {}

final class FetchAllDoctorInitial extends FetchAllDoctorState {}
final class FetchAllDoctorLoading extends FetchAllDoctorState {}
final class FetchAllDoctorSuccess extends FetchAllDoctorState {
  final List<DoctorEntity>doctors;

  FetchAllDoctorSuccess({required this.doctors});
}
final class FetchAllDoctorFailure extends FetchAllDoctorState {
  final String errMessage;

  FetchAllDoctorFailure({required this.errMessage});
}