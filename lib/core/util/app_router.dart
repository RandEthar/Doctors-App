


import 'package:doctors_app/feature/auth/presentation/views/sigin_view_email.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_password.dart';
import 'package:doctors_app/feature/auth/presentation/views/sign_up_view_detuils.dart';
import 'package:doctors_app/feature/auth/presentation/views/sign_up_view_password.dart';
import 'package:flutter/material.dart';


Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SiginViewEmail.routeName:
      return MaterialPageRoute(
        builder: (context) => const  SiginViewEmail(),
      );
       case SiginViewPassword.routeName:
      return MaterialPageRoute(
        builder: (context) => const  SiginViewPassword(),
      );
    case SignUpView.routeName:
      return MaterialPageRoute(
        builder: (context) => const  SignUpView(),
      );
       case SignUpViewPassword.routeName:
      return MaterialPageRoute(
        builder: (context) => const  SignUpViewPassword(),
      );
    default:
      return null;
  }
}