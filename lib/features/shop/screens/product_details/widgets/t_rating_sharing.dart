import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TRatingShare extends StatelessWidget {
  const TRatingShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// rating
        Row(
          children: [
            const Icon(Iconsax.star5, color: TColors.accent, size: 24,),
            const SizedBox(width: TSizes.spaceBtwItems / 2,),
            Text.rich(
                TextSpan(children: [
                  TextSpan(text: '5.0', style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: '(199)')
                ])
            )
          ],
        ),
        IconButton(onPressed: (){}, icon: const Icon(Icons.share, size: TSizes.iconMd,))
      ],
      /// Share button

    );
  }
}