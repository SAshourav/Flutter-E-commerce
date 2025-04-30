import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/product_cards/brand_title_with_verification.dart';
import 'package:t_store/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../utils/constants/image_strings.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCardCounterIcon(onPressed: (){}, iconColor: Colors.white,)
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled){
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: dark ? TColors.black : TColors.white,
            expandedHeight: 440,
            
            flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  /// --Search bar
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSearchContainer(text: 'Search In Store', showBorder: true, showBackground: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  /// Featured Brands
                  TSectionHeading(title: 'Featured Brands', showActionButton: true, onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems / 1.5,),

                  GridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_,index){
                    return GestureDetector(
                      onTap: (){},
                      child: Troundedcontainer(
                        padding: const EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            Flexible(
                                child: TCircularImage(dark: dark, image: TImages.nikeLogo,)
                            ),
                            const SizedBox(height: TSizes.spaceBtwItems / 2,),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TBrandTitleWithVerifivation(title: "Nike", brandTextSize: TextSizes.large,),
                                  Text(
                                    '256 products',
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.labelMedium,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        ];
      }, body: Container()),
    );
  }
}


