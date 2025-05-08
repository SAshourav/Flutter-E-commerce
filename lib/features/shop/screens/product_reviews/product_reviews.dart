import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:t_store/utils/constants/colors.dart';
import '../../../../common/widgets/ratings/rating_indicator.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const TAppBar(title: Text('Reviews & Ratings'), showbackArrow: true,),

      body:SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Rating and Reviews are verified and are from the people who use the same type of device that you use."),
              const SizedBox(height: TSizes.spaceBtwItems,),
              
              // Overall product rating
              const OverallProductRating(textOver: '4.1',),
              const RatingStar(rating: 4.1,),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // User Review
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard()
            ],
          ),
        ),
      ),
    );
  }
}






