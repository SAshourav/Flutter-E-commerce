import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/login/widgets/tFooter.dart';
import 'package:t_store/features/authentication/screens/signup/widget/signUpDivider.dart';
import 'package:t_store/features/authentication/screens/signup/widget/signUpForm.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/styles/spacing_style.dart';
import '../../../../utils/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                TTexts.signupTitle,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form Fields
              const SignupForm(),

              // Divider, Footer Outside Form
              const SizedBox(height: TSizes.spaceBtwSections),
              Signupdivider(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),
              const TFooter(),
            ],
          ),
        ),
      ),
    );
  }
}


