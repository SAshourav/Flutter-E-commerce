import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/signup/signUpScreen.dart';
import 'package:t_store/navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../forgetPassword/forgetPasswordScreen.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)
              ),
              obscureText: true,
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(TTexts.rememberMe)
                  ],
                ),

                //Forget Password
                TextButton(onPressed: (){
                  Get.offAll(const Forgetpasswordscreen());
                }, child: const Text(TTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            /// SignIn button
            SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Get.to(const NavigationMenu());
                }, child: const Text(TTexts.signIn))
            ),
            /// create Account Button
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(width: double.infinity,
                child: OutlinedButton(onPressed: (){
                  Get.to(const SignUpScreen());
                }, child: const Text(TTexts.createAccount))
            ),
          ],
        ),
      ),
    );
  }
}