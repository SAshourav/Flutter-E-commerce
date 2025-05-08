import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/personalization/screens/address/add_new_address.dart';
import 'package:t_store/features/personalization/screens/address/widgets/single_address.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../utils/helpers/helper_functions.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? const Color(0xFF2A3C34) : const Color(0xFFF5E8C7),
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
          onPressed: ()=> Get.to(()=> const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color: TColors.white,),
      ),
      appBar: TAppBar(
        showbackArrow: true,
        title: Text("Address", style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
