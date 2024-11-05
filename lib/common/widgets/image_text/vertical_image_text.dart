import 'package:funpointe/utils/constants/colors.dart';
import 'package:funpointe/utils/constants/sizes.dart';
import 'package:funpointe/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AVerticalImageText extends StatelessWidget {
  final String title, image;
  final Color textColor;
  final Color? backgroundColor;
  final Color? iconColor;
  final VoidCallback? onTap;

  const AVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    this.textColor = FColors.white,
    this.backgroundColor,
    this.onTap,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = AHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 56,
            width: 56,
            margin: const EdgeInsets.symmetric(horizontal: ASizes.xs),
            padding: const EdgeInsets.all(ASizes.sm),
            decoration: BoxDecoration(
                color:
                    backgroundColor ?? (isDark ? FColors.dark : FColors.light),
                shape: BoxShape.circle),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              color: iconColor ?? (isDark ? FColors.light : FColors.dark),
            ),
          ),
          const SizedBox(
            height: ASizes.spaceBtwItems / 2,
          ),
          SizedBox(
            width: 55,
            child: Center(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: FColors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
