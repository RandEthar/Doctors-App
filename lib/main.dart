import 'package:doctors_app/core/util/app_router.dart';
import 'package:doctors_app/feature/auth/presentation/views/widgets/sigin_view.dart';
import 'package:flutter/material.dart';

void main() {
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
    initialRoute: SiginView.routeName,
    );
  }
}
