import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? const Color(0xFF2A3C34) : const Color(0xFFF5E8C7),
      appBar: const TAppBar(
        showbackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding:  const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
             children: [
               /// Profile Picture
               SizedBox(
                 width: double.infinity,
                 child: Column(
                   children: [
                     TCircularImage(dark: dark, image: TImages.user, width: 80, height: 80,),
                     TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                   ],
                 ),
               ),
               const SizedBox(height: TSizes.spaceBtwItems / 2,),
               const Divider(),
               const SizedBox(height: TSizes.spaceBtwItems,),
               const TSectionHeading(title: "Profile Information", showActionButton: false,),
               const SizedBox(height: TSizes.spaceBtwItems,),
               TProfileMenu(onPressed: () {  }, title: 'Name', value: 'MD SABBIR AHMED',),
               TProfileMenu(onPressed: () {  }, title: 'Username', value: 'sa_shourav',),

               const SizedBox(height: TSizes.spaceBtwItems / 2,),
               const Divider(),
               const SizedBox(height: TSizes.spaceBtwItems,),

               const TSectionHeading(title: "Profile Information", showActionButton: false,),
               const SizedBox(height: TSizes.spaceBtwItems,),
               TProfileMenu(onPressed: () {  }, title: 'User Id', value: '45689', icon: Iconsax.copy,),
               TProfileMenu(onPressed: () {  }, title: 'E-mail', value: 'sabbir.personal@proton.me',),
               TProfileMenu(onPressed: () {  }, title: 'Phone Number', value: '01949610060',),
               TProfileMenu(onPressed: () {  }, title: 'Gender', value: 'Male',),
               TProfileMenu(onPressed: () {  }, title: 'Date of Birth', value: '02 july 2002',),

               const SizedBox(height: TSizes.spaceBtwItems / 2,),
               const Divider(),
               const SizedBox(height: TSizes.spaceBtwItems,),
               
               Center(
                 child: TextButton(onPressed: (){}, child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
               )
             ],

          ),
        ),
      ),
    );
  }
}


