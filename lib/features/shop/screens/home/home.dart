import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/product_cards/product_card_vertical.dart';
import 'package:t_store/features/shop/screens/home/widgets/homeAppBar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products_cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/device/device_utility.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  /// Search Bar
                  TSearchContainer(text: 'Search in store...',),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  /// Categories
                  Padding(
                      padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white,),
                        SizedBox(height: TSizes.spaceBtwItems,),
                        // Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TpromoSlider(banners: [
                    TImages.promoBanner1, TImages.promoBanner2,TImages.promoBanner3
                  ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  // --Heading
                  const TSectionHeading(title: 'Popular Products'),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  // -- Popular products--
                  GridLayout(itemCount: 2,itemBuilder: (_, index) => const ProductCardVertical(),),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}























