part of 'signup_with_email_and_password_cubit_cubit.dart';

@immutable
sealed class SignupWithEmailAndPasswordState {}

final class SignupWithEmailAndPasswordCubitInitial
    extends SignupWithEmailAndPasswordState {}
final class SignupWithEmailAndPasswordLoading

    extends SignupWithEmailAndPasswordState {}

final class SignupWithEmailAndPasswordSuccess
    extends SignupWithEmailAndPasswordState {
      final AuthResponse signInResponse;

  SignupWithEmailAndPasswordSuccess({required this.signInResponse});


    }

final class SignupWithEmailAndPasswordFailure
    extends SignupWithEmailAndPasswordState {
  final String errMessage;

  SignupWithEmailAndPasswordFailure({required this.errMessage});
}