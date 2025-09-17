import 'package:doctors_app/core/di/dependency_injection.dart';
import 'package:doctors_app/core/helpers/constant.dart';
import 'package:doctors_app/core/helpers/extension.dart';
import 'package:doctors_app/core/helpers/sheard_pref_healper.dart';
import 'package:doctors_app/core/util/app_router.dart';
import 'package:doctors_app/feature/auth/presentation/views/sigin_view_email.dart';
import 'package:doctors_app/feature/main/presentation/view/main_view.dart';
import 'package:flutter/material.dart';

bool isLoggedInUser = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
 await setup();
  await checkIfUserIsLoggedIn(); 
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
      initialRoute: isLoggedInUser
          ? MainView.routeName 
          : SiginViewEmail.routeName, 
    );
  }
}

Future<void> checkIfUserIsLoggedIn() async {
  String userToken = await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
