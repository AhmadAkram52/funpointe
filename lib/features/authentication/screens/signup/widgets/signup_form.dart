import 'package:flutter/material.dart';
import 'package:funpointe/features/authentication/controllers/signup/signup_controller.dart';
import 'package:funpointe/features/authentication/screens/login/login_screen.dart';
import 'package:funpointe/features/authentication/screens/verify/pin_verification_screen.dart';
import 'package:funpointe/utils/constants/colors.dart';
import 'package:funpointe/utils/constants/sizes.dart';
import 'package:funpointe/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SignupController signUpCtrl = Get.put(SignupController());
    return Form(
      child: Column(
        children: [
          TextField(
            controller: signUpCtrl.userNameController.value,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              label: Text(FTexts.fullName),
            ),
          ),
          const SizedBox(height: ASizes.spaceBtwInputFields),
          TextField(
            controller: signUpCtrl.emailController.value,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct), label: Text(FTexts.email)),
          ),
          const SizedBox(height: ASizes.spaceBtwInputFields),
          TextField(
            controller: signUpCtrl.phoneController.value,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              label: Text(FTexts.phoneNo),
            ),
          ),
          const SizedBox(height: ASizes.spaceBtwInputFields),
          Obx(() {
            return TextField(
              controller: signUpCtrl.passwordController.value,
              obscureText: signUpCtrl.hidePassword.value,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.password_check),
                  label: const Text(FTexts.password),
                  suffixIcon: IconButton(
                    onPressed: signUpCtrl.showPassword,
                    icon: Icon(signUpCtrl.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  )),
            );
          }),
          const SizedBox(height: ASizes.spaceBtwInputFields),
          Row(
            children: [
              SizedBox(
                height: ASizes.defaultSpace,
                width: ASizes.defaultSpace,
                child: Obx(() {
                  return Checkbox(
                      value: signUpCtrl.isCheck.value,
                      onChanged: (value) => signUpCtrl.markCheck(value!));
                }),
              ),
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                      text: "${FTexts.iAgreeTo} ",
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                    text: FTexts.privacyPolicy,
                    style: Theme.of(context).textTheme.labelLarge?.apply(
                          color: FColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: FColors.primary,
                        ),
                  ),
                  TextSpan(
                      text: " ${FTexts.and} ",
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                    text: FTexts.termsOfUse,
                    style: Theme.of(context).textTheme.labelLarge!.apply(
                          color: FColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: FColors.primary,
                        ),
                  ),
                ],
              ))
            ],
          ),
          const SizedBox(height: ASizes.spaceBtwInputFields),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.toNamed(PinVerifyScreen.route),
              child: const Text("Next"),
            ),
          ),
          const SizedBox(height: ASizes.spaceBtwInputFields),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text("Have an account?"),
                ],
              ),
              TextButton(
                  onPressed: () {
                    Get.toNamed(LoginScreen.route);
                  },
                  child: const Text("Login")),
            ],
          ),
        ],
      ),
    );
  }
}
