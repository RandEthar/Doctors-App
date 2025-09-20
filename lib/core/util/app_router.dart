import 'package:doctors_app/core/di/dependency_injection.dart';
import 'package:doctors_app/feature/auth/data/repos/auth_repo_impl.dart';
import 'package:doctors_app/feature/auth/domain/usecase/signin_with_email_and_pasword_use_cae.dart';
import 'package:doctors_app/feature/auth/domain/usecase/signup_with_email_and_pasword_use_cae.dart';
import 'package:doctors_app/feature/auth/presentation/manger/cubit/signup_with_email_and_password_cubit_cubit.dart';
import 'package:doctors_app/feature/auth/presentation/manger/signIn/signin_with_email_and_password_cubit.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_email.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_password.dart';
import 'package:doctors_app/feature/auth/presentation/views/sign_up_view_detuils.dart';
import 'package:doctors_app/feature/auth/presentation/views/sign_up_view_password.dart';
import 'package:doctors_app/feature/main/presentation/view/main_view.dart';
import 'package:doctors_app/feature/search/data/repos/search_repo_imple.dart';
import 'package:doctors_app/feature/search/domain/repos/search_repo.dart';
import 'package:doctors_app/feature/search/domain/usecase/search_doctor_by_name_use_case.dart';
import 'package:doctors_app/feature/search/presentation/manger/cubit/search_cubit.dart';
import 'package:doctors_app/feature/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SiginViewEmail.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => SigninWithEmailAndPasswordCubit(
              SignInWithEmailAndPasswordUseCase(
                  authRepo: getIt.get<AuthRepoImpl>())),
          child: const SiginViewEmail(),
        ),
      );
    case SiginViewPassword.routeName:
      final cubit = settings.arguments as SigninWithEmailAndPasswordCubit;
      return MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: cubit,
          child: const SiginViewPassword(),
        ),
      );
    case SignUpView.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => SignupWithEmailAndPasswordCubit(
              SignupWithEmailAndPaswordUseCase(
                  authRepo: getIt.get<AuthRepoImpl>())),
          child: const SignUpView(),
        ),
      );
    case SignUpViewPassword.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: settings.arguments as SignupWithEmailAndPasswordCubit,
          child: const SignUpViewPassword(),
        ),
      );
    case SearchView.routeName:
      return MaterialPageRoute(
          builder: (context) => BlocProvider(
                create: (context) => SearchCubit(SearchDoctorByNameUseCase(
                    searchRepo: getIt.get<SearchRepo>())),
                child: const SearchView(),
              ));
    case MainView.routeName:
      return MaterialPageRoute(
        builder: (context) => const MainView(),
      );
    default:
      return null;
  }
}
