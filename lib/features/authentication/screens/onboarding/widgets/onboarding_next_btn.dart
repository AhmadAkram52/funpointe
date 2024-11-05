import 'package:flutter/material.dart';
import 'package:funpointe/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:funpointe/utils/constants/colors.dart';
import 'package:funpointe/utils/constants/sizes.dart';
import 'package:funpointe/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextBtn extends StatelessWidget {
  const OnBoardingNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: ADeviceUtils.getBottomNavigationBarHeight() + 10,
      right: ASizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), backgroundColor: FColors.primary),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
