import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/store/widget/t_brand_showcase.dart';

import '../../../../../common/widgets/brand_card/brand_card.dart';
import '../../../../../common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TBrandTopProducts extends StatelessWidget {
  const TBrandTopProducts({
    super.key,
    required this.dark,
    required this.brandName,
    required this.brandLogo,
    this.showBorder = true,
    required this.productImages,
  });

  final bool dark;
  final String brandName;
  final String brandLogo;
  final bool showBorder;
  final List<String> productImages;

  @override
  Widget build(BuildContext context) {
    return Troundedcontainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          TBrandCard(
            dark: dark,
            showBorder: showBorder,
            brandTitle: brandName,
            brandImage: brandLogo, productCount: 8,
          ),
          const SizedBox(height: TSizes.spaceBtwItems,),
          TBrandShowcase(
            dark: dark,
            images: productImages,
          ),
        ],
      ),
    );
  }
}