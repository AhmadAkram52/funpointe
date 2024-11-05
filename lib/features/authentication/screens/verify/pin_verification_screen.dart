import 'package:flutter/material.dart';
import 'package:funpointe/common/styles/spacing_style.dart';
import 'package:funpointe/features/home/screens/welcome_screen.dart';
import 'package:funpointe/utils/constants/colors.dart';
import 'package:funpointe/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class PinVerifyScreen extends StatelessWidget {
  static const String route = '/pinVerify';

  const PinVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ASpacingStyle.paddingWithAppBar,
          child: Column(
            children: [
              Text(
                "Almost there",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              const Text(
                  "Please enter the 6-digit code sent to your email Ahmadg03025249091@gmail.com for verification."),
              const SizedBox(height: ASizes.spaceBtwSections),
              Pinput(
                  length: 6,
                  defaultPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    textStyle: const TextStyle(
                        fontSize: 20,
                        color: FColors.darkerGrey,
                        fontWeight: FontWeight.w600),
                    decoration: BoxDecoration(
                      color: FColors.accent.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                  )),
              const SizedBox(height: ASizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.toNamed(WelComeScreen.route),
                    child: const Text("Verify")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
