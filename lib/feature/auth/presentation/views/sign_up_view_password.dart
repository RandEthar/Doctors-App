
import 'package:doctors_app/feature/auth/presentation/views/widgets/signup_bloc_consumer.dart';
import 'package:flutter/material.dart';

class SignUpViewPassword extends StatelessWidget {
  const SignUpViewPassword({super.key});
  static const String routeName = 'SignUppassword';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SafeArea(child:SignupBlocConsumer()
      
      
      ) ,
    );
  }
}