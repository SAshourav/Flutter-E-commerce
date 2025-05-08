import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:t_store/common/widgets/ratings/rating_indicator.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('Sabrina', style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        /// Review
        Row(
          children: [
            const RatingStar(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('01 Nov 2024', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        const ReadMoreText(
          'Hello this is a trail review to make the product look good, but to be honest , this is a bullshit product , do not buy this to be honest , this is a bullshit product , do not buy this .',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
        Troundedcontainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Padding(
              padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sabbir Store", style: Theme.of(context).textTheme.titleMedium,),
                    Text("02 Nov 2024", style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems,),
                const ReadMoreText(
                  'Hello this is a trail review to make the product look good, but to be honest , this is a bullshit product , do not buy this to be honest , this is a bullshit product , do not buy this .',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),
      ],
    );
  }
}
