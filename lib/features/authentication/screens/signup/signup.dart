import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:e_commerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              TFromDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
