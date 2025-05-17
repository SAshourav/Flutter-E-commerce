import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SingleOrder extends StatelessWidget {
  const SingleOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark  = THelperFunctions.isDarkMode(context);
    return Troundedcontainer(
      backgroundColor:TColors.primary.withOpacity(0.5),
      borderColor: dark ? TColors.darkGrey : TColors.grey,
      showBorder: true,
      radius: TSizes.borderRadiusMd,
      padding: EdgeInsets.all(TSizes.lg),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Iconsax.bag),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                  Column(
                    children: [
                      Text("Processing", style: Theme.of(context).textTheme.bodyMedium,),
                      Text('7 April 2025', style: Theme.of(context).textTheme.titleMedium,)
                    ],
                  ),
                ],
              ),
              IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right))
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwItems,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Iconsax.tag),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                  Column(
                    children: [
                      Text("Order", style: Theme.of(context).textTheme.bodyMedium,),
                      Text('[#1da0d]', style: Theme.of(context).textTheme.titleMedium,)
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(Iconsax.personalcard),
                  const SizedBox(width: TSizes.spaceBtwItems,),
                  Column(
                    children: [
                      Text("Shipping Date", style: Theme.of(context).textTheme.bodyMedium,),
                      Text('15 April 2025', style: Theme.of(context).textTheme.titleMedium,)
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}