import 'package:funpointe/features/authentication/screens/login/login_screen.dart';
import 'package:funpointe/features/authentication/screens/onboarding/onboarding.dart';
import 'package:funpointe/features/authentication/screens/signup/signup_screen.dart';
import 'package:funpointe/features/authentication/screens/splash/splash_screen.dart';
import 'package:funpointe/features/authentication/screens/verify/pin_verification_screen.dart';
import 'package:funpointe/features/home/screens/welcome_screen.dart';
import 'package:get/get.dart';

class APageRoutes {
  static List<GetPage> aPagesRoutes = [
    GetPage(name: OnboardingScreen.route, page: () => const OnboardingScreen()),
    GetPage(name: SplashScreen.route, page: () => SplashScreen()),
    GetPage(name: LoginScreen.route, page: () => const LoginScreen()),
    GetPage(name: SignUpScreen.route, page: () => const SignUpScreen()),
    GetPage(name: PinVerifyScreen.route, page: () => const PinVerifyScreen()),
    GetPage(name: WelComeScreen.route, page: () => const WelComeScreen()),
  ];
}
