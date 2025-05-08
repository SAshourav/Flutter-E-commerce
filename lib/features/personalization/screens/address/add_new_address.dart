import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/helpers/helper_functions.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark  = THelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? const Color(0xFF2A3C34) : const Color(0xFFF5E8C7),
      appBar: TAppBar(
        showbackArrow: true,
        title: Text("Add New Address", style: Theme.of(context).textTheme.headlineSmall,),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
              child: Column(
                children: [
                  TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),),
                  const SizedBox(height: TSizes.spaceBtwInputFields,),
                  TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number'),),
                  const SizedBox(height: TSizes.spaceBtwInputFields,),
                  TextFormField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number'),),
                  const SizedBox(height: TSizes.spaceBtwInputFields,),
                  Row(
                    children: [
                      Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Street'),)),
                      const SizedBox(width: TSizes.spaceBtwInputFields,),
                      Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Postal Code'),)),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields,),
                  Row(
                    children: [
                      Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'City'),)),
                      const SizedBox(width: TSizes.spaceBtwInputFields,),
                      Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'State'),)),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields,),
                  TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),),
                  const SizedBox(height: TSizes.spaceBtwInputFields,),
                  SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: const Text('Save')),)
                ],
              )
          ),
        ),
      ),
    );
  }
}
