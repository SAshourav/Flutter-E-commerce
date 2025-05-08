import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../images/t_rounded_images.dart';
import '../product_cards/brand_title_with_verification.dart';
import '../texts/product_title_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImage(
          imageUrl: TImages.productImage5,
          width: 60,
          height: 40,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.darkGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),

        // Title , price , Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifivation(title: 'Nike'),
              const Flexible(child: ProductTitleText(title: "Black Sports T-shirt", maxLines: 1,)),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: 'Color', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Green', style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: 'Size', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'M', style: Theme.of(context).textTheme.bodyLarge),
                      ]
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}