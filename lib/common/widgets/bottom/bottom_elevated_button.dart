import 'package:funpointe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ABottomElevatedButton extends StatelessWidget {
  const ABottomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ASizes.defaultSpace),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
