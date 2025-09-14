import 'package:bloc/bloc.dart';
import 'package:doctors_app/feature/auth/data/models/auth_response.dart';
import 'package:doctors_app/feature/auth/data/models/signup_request_body.dart';
import 'package:doctors_app/feature/auth/domain/usecase/signup_with_email_and_pasword_use_cae.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'signup_with_email_and_password_cubit_state.dart';

class SignupWithEmailAndPasswordCubit
    extends Cubit<SignupWithEmailAndPasswordState> {
  SignupWithEmailAndPasswordCubit(this.signupWithEmailAndPaswordUseCae)
      : super(SignupWithEmailAndPasswordCubitInitial());

  final SignupWithEmailAndPaswordUseCase signupWithEmailAndPaswordUseCae;

  /// Controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  /// Form Keys

  GlobalKey<FormState> emailKey = GlobalKey<FormState>();

  GlobalKey<FormState> passwordKey = GlobalKey<FormState>();

  /// Signup function
  void signupWithEmailAndPasword() async {
    emit(SignupWithEmailAndPasswordLoading());

    final requestBody = SignupRequestBody(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      gender: genderController.text,
      password: passwordController.text,
      passwordConfirmation: passwordConfirmationController.text,
    );

    final response =
        await signupWithEmailAndPaswordUseCae.call(param: requestBody);

    response.fold((error) {
      emit(SignupWithEmailAndPasswordFailure(errMessage: error.message));
    }, (data) {
      emit(SignupWithEmailAndPasswordSuccess(signInResponse: data));
    });
  }

  /// للتنظيف عند إغلاق cubit
  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    genderController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    return super.close();
  }
}
