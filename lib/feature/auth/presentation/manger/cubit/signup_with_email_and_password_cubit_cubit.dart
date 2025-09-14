import 'package:bloc/bloc.dart';
import 'package:doctors_app/feature/auth/data/models/auth_response.dart';
import 'package:doctors_app/feature/auth/data/models/signup_request_body.dart';
import 'package:doctors_app/feature/auth/domain/usecase/signup_with_email_and_pasword_use_cae.dart';
import 'package:meta/meta.dart';

part 'signup_with_email_and_password_cubit_state.dart';

class SignupWithEmailAndPasswordCubit
    extends Cubit<SignupWithEmailAndPasswordState> {
  SignupWithEmailAndPasswordCubit(this.signupWithEmailAndPaswordUseCae)
      : super(SignupWithEmailAndPasswordCubitInitial());
  final SignupWithEmailAndPaswordUseCae signupWithEmailAndPaswordUseCae;

  void signupWithEmailAndPasword(SignupRequestBody signupRequestBody) async {
    var respons =
        await signupWithEmailAndPaswordUseCae.call(param: signupRequestBody);
    respons.fold((error) {
      emit(SignupWithEmailAndPasswordFailure(errMessage: error.message));
    }, (data) {
      emit(SignupWithEmailAndPasswordSuccess(signInResponse: data));
    });
  }
}
