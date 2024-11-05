import 'package:funpointe/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:funpointe/features/authentication/screens/onboarding/widgets/onboarding_next_btn.dart';
import 'package:funpointe/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:funpointe/features/authentication/screens/onboarding/widgets/onboarding_skip_btn.dart';
import 'package:funpointe/utils/constants/image_strings.dart';
import 'package:funpointe/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/onboarding_dot_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  static const String route = '/onboarding';
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: FImages.onBoardingImage1,
                  title: FTexts.onBoardingTitle1,
                  subTitle: FTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: FImages.onBoardingImage2,
                  title: FTexts.onBoardingTitle2,
                  subTitle: FTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: FImages.onBoardingImage3,
                  title: FTexts.onBoardingTitle3,
                  subTitle: FTexts.onBoardingSubTitle3),
            ],
          ),
          const SkipButton(),
          const PageIndicator(),
          const OnBoardingNextBtn(),
        ],
      ),
    );
  }
}
