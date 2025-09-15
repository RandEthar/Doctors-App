import 'package:doctors_app/feature/main/presentation/view/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const String routeName = 'MainView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomNavBar(),
        body: Column(),
    );
  }
}