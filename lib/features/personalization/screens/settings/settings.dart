import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/list_tille/settings_menu_tile.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/address/address.dart';
import 'package:t_store/features/personalization/screens/orders/orders.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/list_tille/user_profile_tile.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? const Color(0xFF2A3C34) : const Color(0xFFF5E8C7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// - Header
            PrimaryHeaderContainer(child: Column(
              children: [
                TAppBar(title: Text("Account", style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),
                const SizedBox(height: TSizes.spaceBtwSections,),

                // User Profile Card
                TUserProfileTile(dark: dark, onTap: ()=> Get.to(()=> const ProfileScreen()),),
                const SizedBox(height: TSizes.spaceBtwSections,),
              ],
              )
            ),
            ///  --Body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Title
                  const TSectionHeading(title: "Account Setting", showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  TSettingMenuTile(icon: Iconsax.safe_home, title: "My Addresses", subTitle: 'Set Shipping delivery address', onTap: ()=> Get.to(()=> const UserAddressScreen()),),
                  TSettingMenuTile(icon: Iconsax.shopping_cart, title: "My Cart", subTitle: 'Set Shipping delivery address', onTap: () { },),
                  TSettingMenuTile(icon: Iconsax.bag_tick, title: "My Orders", subTitle: 'Set Shipping delivery address', onTap: ()=> Get.to(()=> const OrdersScreen()),),
                  TSettingMenuTile(icon: Iconsax.bank, title: "Bank Account", subTitle: 'Set Shipping delivery address', onTap: () { },),
                  TSettingMenuTile(icon: Iconsax.discount_shape, title: "My Coupons", subTitle: 'Set Shipping delivery address', onTap: () { },),
                  TSettingMenuTile(icon: Iconsax.notification, title: "Notifications", subTitle: 'Set Shipping delivery address', onTap: () { },),
                  TSettingMenuTile(icon: Iconsax.security_card, title: "Account Privacy", subTitle: 'Set Shipping delivery address', onTap: () { },),

                  // App settings
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(title: "App Settings", showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  TSettingMenuTile(icon: Iconsax.document_upload, title: "Load Data", subTitle: "Upload Data To Your Cloud Firebase", onTap: (){}),
                  TSettingMenuTile(
                    icon: Iconsax.location,
                    title: "Geo-Location",
                    subTitle: "Set recommendation based on location",
                    onTap: (){},
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all ages",
                    onTap: (){},
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subTitle: "Set image quality to be seen",
                    onTap: (){},
                    trailing: Switch(value: false, onChanged: (value){}),
                  ),
                    // -Logout Button
                    const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
