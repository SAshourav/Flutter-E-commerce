import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/product_cards/t_brand_title_text.dart';
import 'package:t_store/utils/constants/enums.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TBrandTitleWithVerifivation extends StatelessWidget {
  const TBrandTitleWithVerifivation({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor =  TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor,iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
              maxLines: maxLines,
              brandTextSize: brandTextSize,
            color: textColor,
            textAlign: textAlign,
            title: title,
          ),
        ),
        const SizedBox(width: TSizes.xs,),
        Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs),

      ],
    );
  }
}