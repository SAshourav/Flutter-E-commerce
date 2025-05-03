import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';
import '../custom_shapes/containers/TRoundedContainer.dart';
import '../images/t_circular_image.dart';
import '../product_cards/brand_title_with_verification.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.dark,
    required this.brandImage,
    required this.brandTitle,
    required this.productCount,
    this.showBorder = false,
    this.onTap,
  });

  final bool dark;
  final String brandImage;
  final String brandTitle;
  final int productCount;
  final bool showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Troundedcontainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: dark? TColors.primary:Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: TCircularImage(
                dark: dark,
                image: brandImage,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TBrandTitleWithVerifivation(
                    title: brandTitle,
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '$productCount products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}