import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/t_rounded_images.dart';
import 'package:t_store/common/widgets/product_cards/product_card_horizontal.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../utils/helpers/helper_functions.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? const Color(0xFF2A3C34) : const Color(0xFFF5E8C7),
      appBar: const TAppBar(title: Text("Sports Shirts"), showbackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const TRoundedImage(imageUrl: TImages.promoBanner3, width: double.infinity, applyImageRadius: true,),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Sub- Category
              Column(
                children: [
                  //Heading
                  TSectionHeading(title: 'Sports Shirts', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems/2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index)=> const SizedBox(width: TSizes.spaceBtwItems,),
                        itemBuilder: (context,index){
                      return const ProductCardHorizontal();
                    }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
