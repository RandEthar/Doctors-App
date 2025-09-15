import 'package:doctors_app/core/di/dependency_injection.dart';
import 'package:doctors_app/core/util/app_router.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_email.dart';
import 'package:doctors_app/feature/main/presentation/view/main_view.dart';

import 'package:flutter/material.dart';

void main() {
  setup();
  runApp(const DoctorsApp());
}

class DoctorsApp extends StatelessWidget {
  const DoctorsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctors App',
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
      onGenerateRoute: onGenerateRoute,
      initialRoute: MainView.routeName,
    );
  }
}
