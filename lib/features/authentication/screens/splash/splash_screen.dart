import 'package:flutter/material.dart';
import 'package:funpointe/features/authentication/controllers/splash/splash_controller.dart';
import 'package:funpointe/utils/constants/colors.dart';
import 'package:funpointe/utils/constants/image_strings.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  static const String route = '/splash';

  SplashScreen({super.key});

  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: FColors.primary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(FImages.splashLogo)),
            Text(
              'FunPointe',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: FColors.white,
              ),
            ),
          ],
        ));
  }
}
