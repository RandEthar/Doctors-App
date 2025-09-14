part of 'signin_with_email_and_password_cubit.dart';

@immutable
sealed class SigninWithEmailAndPasswordState {}

final class SigninWithEmailAndPasswordInitial
    extends SigninWithEmailAndPasswordState {}

final class SigninWithEmailAndPasswordLoading
    extends SigninWithEmailAndPasswordState {}

final class SigninWithEmailAndPasswordSuccess
    extends SigninWithEmailAndPasswordState {
      final AuthResponse loginResponse;

  SigninWithEmailAndPasswordSuccess({required this.loginResponse});
    }

final class SigninWithEmailAndPasswordFailure
    extends SigninWithEmailAndPasswordState {
  final String errMessage;

  SigninWithEmailAndPasswordFailure({required this.errMessage});
}
