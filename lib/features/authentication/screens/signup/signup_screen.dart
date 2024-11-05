import 'package:flutter/material.dart';
import 'package:funpointe/common/styles/spacing_style.dart';
import 'package:funpointe/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:funpointe/features/authentication/screens/signup/widgets/signup_header.dart';

class SignUpScreen extends StatelessWidget {
  static const String route = '/signup';

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithAppBar,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///SignUp Header
              SignUpHeader(),

              /// SignUp Form
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
