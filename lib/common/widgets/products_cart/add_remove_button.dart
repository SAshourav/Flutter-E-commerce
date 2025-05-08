import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../icons/t_circular_icon.dart';

class ProductQuantityWithAddRemove extends StatelessWidget {
  const ProductQuantityWithAddRemove({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 70,),
        // Add Remove Button
        Row(
          children: [
            TCircularIcon(
                width: 32,
                height: 32,
                color: dark ? TColors.white : TColors.black,
                backgroundColor: dark ? TColors.primary : TColors.light,
                icon: Iconsax.minus
            ),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('2', style: Theme.of(context).textTheme.titleSmall,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            const TCircularIcon(
                width: 32,
                height: 32,
                color:TColors.white,
                backgroundColor: TColors.primary,
                icon: Iconsax.add
            ),
          ],
        )
      ],
    );
  }
}