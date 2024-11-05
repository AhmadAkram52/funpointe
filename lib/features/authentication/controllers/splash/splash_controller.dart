import 'package:funpointe/features/authentication/screens/onboarding/onboarding.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get find => Get.find();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAndToNamed(OnboardingScreen.route);
    });
  }
}
