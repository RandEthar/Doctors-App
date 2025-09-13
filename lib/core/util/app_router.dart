


import 'package:doctors_app/feature/auth/presentation/views/widgets/sigin_view_email.dart';
import 'package:flutter/material.dart';


Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SiginViewEmail.routeName:
      return MaterialPageRoute(
        builder: (context) => const  SiginViewEmail(),
      );
  
    default:
      return null;
  }
}