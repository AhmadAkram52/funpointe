import 'package:flutter/material.dart';
import 'package:funpointe/common/styles/spacing_style.dart';
import 'package:funpointe/features/authentication/screens/login/widgets/login_form.dart';
import 'package:funpointe/features/authentication/screens/login/widgets/login_header.dart';

class LoginScreen extends StatefulWidget {
  static const String route = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithAppBar,
          child: Column(
            children: [
              /// Login Page Header
              LoginHeader(),

              /// Login Form
              ALoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
