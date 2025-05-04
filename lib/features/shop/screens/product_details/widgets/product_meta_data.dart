import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/product_cards/brand_title_with_verification.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price and Sale price
          Row(
            children: [
              Troundedcontainer(
                radius: TSizes.sm,
                backgroundColor: TColors.secondary,
                padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                child: Text(
                  '25%',
                  style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwItems,),
              Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
              const SizedBox(width: TSizes.spaceBtwItems,),
              const ProductPriceText(price: '175', isLarge: true,)
            ],
          ),
        const SizedBox(width: TSizes.spaceBtwItems/2,),
        /// Title
        const ProductTitleText(title: "Green Nike Sports Shirt"),
        const SizedBox(width: TSizes.spaceBtwItems/2,),
        /// Stock Status
        Row(
          children: [
            const ProductTitleText(title: "Status"),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems/2,),
        /// Brand
        Row(
          children: [
            TCircularImage(dark: dark, image: TImages.nikeLogo, width: 32, height: 32,overlayColor: dark?TColors.white:TColors.black,),
            const TBrandTitleWithVerifivation(title: "Nike", brandTextSize: TextSizes.medium,),
          ],
        )
      ],
    );
  }
}
