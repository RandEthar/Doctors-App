import 'package:bloc/bloc.dart';
import 'package:doctors_app/feature/auth/data/models/login_request_body.dart';
import 'package:doctors_app/feature/auth/data/models/auth_response.dart';
import 'package:doctors_app/feature/auth/domain/usecase/signin_with_email_and_pasword_use_cae.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'signin_with_email_and_password_state.dart';

class SigninWithEmailAndPasswordCubit
    extends Cubit<SigninWithEmailAndPasswordState> {
  SigninWithEmailAndPasswordCubit(this.signInWithEmailAndPasswordUseCase)
      : super(SigninWithEmailAndPasswordInitial());
  final SignInWithEmailAndPasswordUseCase signInWithEmailAndPasswordUseCase;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKeyPassword = GlobalKey<FormState>();
  GlobalKey<FormState> formKeyEmail = GlobalKey<FormState>();
  void signInWithEmailAndPassword() async {
    emit(SigninWithEmailAndPasswordLoading());

    final response = await signInWithEmailAndPasswordUseCase(
        param: LoginRequestBody(
            email: emailController.text, password: passwordController.text));
    response.fold((error) {
      emit(SigninWithEmailAndPasswordFailure(errMessage: error.message));
    }, (data) {
      emit(SigninWithEmailAndPasswordSuccess(loginResponse: data));
    });
  }
}
