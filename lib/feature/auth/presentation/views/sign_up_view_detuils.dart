import 'package:doctors_app/feature/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = 'siginemail';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SignUpViewBody()),
    );
  }
}
