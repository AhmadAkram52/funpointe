import 'package:flutter/material.dart';
import 'package:funpointe/utils/constants/image_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            const Image(
              height: 270,
              image: AssetImage(FImages.signImage),
            ),
            Positioned(
              bottom: 50,
              left: 30,
              child: Text(
                "Welcome Back,",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.start,
              ),
            ),
            Positioned(
              bottom: 18,
              left: 50,
              child: Text(
                "Sign in to access your account",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
