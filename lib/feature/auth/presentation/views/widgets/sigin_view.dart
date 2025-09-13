import 'package:doctors_app/feature/auth/presentation/views/widgets/sigin_view_body.dart';
import 'package:flutter/material.dart';

class SiginView extends StatelessWidget {
  const SiginView({super.key});
  static const String routeName = 'sigin';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SiginViewBody()),
    );
  }
}
