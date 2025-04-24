import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/login/widgets/loginForm.dart';
import 'package:t_store/features/authentication/screens/login/widgets/logoTitle.dart';
import 'package:t_store/features/authentication/screens/login/widgets/tDivider.dart';
import 'package:t_store/features/authentication/screens/login/widgets/tFooter.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../common/styles/spacing_style.dart';
import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title , SubTitle
              LogoTitle(dark: dark),

              // Form
              const TLoginForm(),
              /// Divider
              TDivider(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),
              /// Footer
              const TFooter()
            ],
          ),
        ),
      ),
    );
  }
}



