import 'package:flutter/material.dart';
import 'package:funpointe/utils/constants/image_strings.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          height: 250,
          image: AssetImage(FImages.signImage),
        ),
        Positioned(
          bottom: 50,
          left: 30,
          child: Text(
            "Get Started,",
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.start,
          ),
        ),
        Positioned(
          bottom: 18,
          left: 50,
          child: Text(
            "By Creating an Account",
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
