import 'package:funpointe/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:funpointe/utils/constants/sizes.dart';
import 'package:funpointe/utils/constants/text_strings.dart';
import 'package:funpointe/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ADeviceUtils.getAppBarHeight(),
      right: ASizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text(FTexts.skip),
      ),
    );
  }
}
