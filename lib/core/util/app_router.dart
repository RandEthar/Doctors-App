import 'package:doctors_app/core/di/dependency_injection.dart';
import 'package:doctors_app/feature/auth/domain/usecase/signin_with_email_and_pasword_use_cae.dart';
import 'package:doctors_app/feature/auth/presentation/manger/sighin/signin_with_email_and_password_cubit.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_email.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_password.dart';
import 'package:doctors_app/feature/auth/presentation/views/sign_up_view_detuils.dart';
import 'package:doctors_app/feature/auth/presentation/views/sign_up_view_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SiginViewEmail.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => SigninWithEmailAndPasswordCubit(
              getIt.get<SignInWithEmailAndPasswordUseCase>()),
          child: const SiginViewEmail(),
        ),
      );
    case SiginViewPassword.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => SigninWithEmailAndPasswordCubit(
              getIt.get<SignInWithEmailAndPasswordUseCase>()),
          child: const SiginViewPassword(),
        ),
      );
    case SignUpView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignUpView(),
      );
    case SignUpViewPassword.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignUpViewPassword(),
      );
    default:
      return null;
  }
}
