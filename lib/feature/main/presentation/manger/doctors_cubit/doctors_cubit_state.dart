part of 'doctors_cubit.dart';

@immutable
sealed class DoctorsState {}

final class DoctorsInitial extends DoctorsState {}
final class DoctorsLoading extends DoctorsState {}
final class DoctorsSuccess extends DoctorsState {
  final List<DoctorEntity>doctors;

  DoctorsSuccess({required this.doctors});
}
final class DoctorsFailure extends DoctorsState {
  final String errMessage;

  DoctorsFailure({required this.errMessage});
}