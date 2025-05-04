import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Troundedcontainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(title: "Price : ", smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems / 2),
                          // Actual Price
                          Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          // Sale Price
                          const ProductPriceText(price: '175'),
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(title: "Stock : "),
                          const SizedBox(width: TSizes.spaceBtwItems / 2),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // Variation Description
              const ProductTitleText(
                title: 'This is the Description of the Product and it can go upto max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        /// Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: TSizes.spaceBtwItems,
              children: [
                CustomChoiceChip(label: "Green", selected: false, onSelected: (value) {}),
                CustomChoiceChip(label: "Red", selected: false, onSelected: (value) {}),
                CustomChoiceChip(label: "Blue", selected: true, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Size", showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems),
            Wrap(
              spacing: TSizes.spaceBtwItems / 4,
              children: [
                CustomChoiceChip(label: "EU - 34", selected: false, onSelected: (value) {}),
                CustomChoiceChip(label: "EU - 36", selected: true, onSelected: (value) {}),
                CustomChoiceChip(label: "EU - 38", selected: false, onSelected: (value) {}),
                CustomChoiceChip(label: "EU - 39", selected: false, onSelected: (value) {}),
                CustomChoiceChip(label: "EU - 40", selected: false, onSelected: (value) {}),
                CustomChoiceChip(label: "EU - 41", selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

