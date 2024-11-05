import 'package:flutter/material.dart';
import 'package:funpointe/utils/constants/image_strings.dart';
import 'package:funpointe/utils/constants/sizes.dart';

class WelComeScreen extends StatelessWidget {
  static const String route = '/welcome';

  const WelComeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Home!',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: ASizes.spaceBtwItems),
            const Image(image: AssetImage(FImages.welcomeImage)),
            const SizedBox(height: ASizes.spaceBtwItems),
            const Text(
                textAlign: TextAlign.center,
                'Currently The Next Part of Home Activity & Fragementation is under development. The upcoming Part 2 is coming Soon........'),
          ],
        ),
      ),
    );
  }
}
