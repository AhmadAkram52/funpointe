import 'package:flutter/material.dart';
import 'package:funpointe/features/authentication/controllers/login/login_controller.dart';
import 'package:funpointe/features/authentication/screens/signup/signup_screen.dart';
import 'package:funpointe/features/authentication/screens/verify/pin_verification_screen.dart';
import 'package:funpointe/utils/constants/sizes.dart';
import 'package:funpointe/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ALoginForm extends StatelessWidget {
  const ALoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                label: Text(FTexts.email),
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwInputFields),
            Obx(() {
              return TextFormField(
                obscureText: LoginController.instance.hidePassword.value,
                decoration: InputDecoration(
                  label: const Text(FTexts.password),
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    icon: Icon(LoginController.instance.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                    onPressed: () => LoginController.instance.showPassword(),
                  ),
                ),
              );
            }),
            const SizedBox(height: ASizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(() {
                      return Checkbox(
                          value: LoginController.instance.rememberCheck.value,
                          onChanged: (value) {
                            LoginController.instance.markRemember(value);
                          });
                    }),
                    const Text(FTexts.rememberMe),
                  ],
                ),
                TextButton(
                    onPressed: () {}, child: const Text(FTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: ASizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(PinVerifyScreen.route),
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(),
                child: const Text("Next"),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwItems),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  children: [
                    Text("Don't have an account?"),
                  ],
                ),
                TextButton(
                    onPressed: () {
                      Get.toNamed(SignUpScreen.route);
                    },
                    child: const Text("SignUp")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
