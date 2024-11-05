import 'package:flutter/material.dart';
import 'package:funpointe/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:funpointe/utils/constants/colors.dart';
import 'package:funpointe/utils/constants/sizes.dart';
import 'package:funpointe/utils/device/device_utility.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());

    return Positioned(
      bottom: ADeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ASizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: const ExpandingDotsEffect(
          activeDotColor: FColors.primary,
          dotHeight: 6,
        ),
      ),
    );
  }
}
