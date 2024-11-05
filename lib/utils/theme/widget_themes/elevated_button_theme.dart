import 'package:funpointe/utils/constants/colors.dart';
import 'package:funpointe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Elevated Button Themes -- */
class AElevatedButtonTheme {
  AElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: FColors.light,
      backgroundColor: FColors.primary,
      disabledForegroundColor: FColors.darkGrey,
      disabledBackgroundColor: FColors.buttonDisabled,
      side: const BorderSide(color: FColors.primary),
      padding: const EdgeInsets.symmetric(vertical: ASizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: FColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ASizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: FColors.light,
      backgroundColor: FColors.primary,
      disabledForegroundColor: FColors.darkGrey,
      disabledBackgroundColor: FColors.darkerGrey,
      side: const BorderSide(color: FColors.primary),
      padding: const EdgeInsets.symmetric(vertical: ASizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: FColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ASizes.buttonRadius)),
    ),
  );
}
