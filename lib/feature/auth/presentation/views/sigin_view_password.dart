import 'package:doctors_app/feature/auth/presentation/views/widgets/sigin_view_password_body.dart';
import 'package:flutter/material.dart';

class SiginViewPassword extends StatelessWidget {
  const SiginViewPassword({super.key});
  static const String routeName = 'siginpassword';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SiginViewPasswordBody()),
    );
  }
}