
import 'package:doctors_app/feature/auth/presentation/views/widgets/sigin_view.dart';

import 'package:flutter/material.dart';


Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SiginView.routeName:
      return MaterialPageRoute(
        builder: (context) => const  SiginView(),
      );
  
    default:
      return null;
  }
}