import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';

class TTermsandConditionCheckbox extends StatelessWidget {
  const TTermsandConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: TSizes.iconMd,
          height: TSizes.iconMd,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${TTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: '${TTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        decorationColor: dark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        color: dark ? TColors.white : TColors.primary,
                      ),
                ),
                TextSpan(
                  text: '${TTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: TTexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        decorationColor: dark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        color: dark ? TColors.white : TColors.primary,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
