import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.dark,
    required this.images,
  });

  final bool dark;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: images.map((imagePath) {
        return Expanded(
          child: Troundedcontainer(
            height: 100,
            margin: const EdgeInsets.only(right: TSizes.sm),
            padding: const EdgeInsets.all(TSizes.md),
            backgroundColor: dark ? TColors.accent : TColors.light,
            child: Image(
              image: AssetImage(imagePath),
              fit: BoxFit.contain,
            ),
          ),
        );
      }).toList(),
    );
  }
}