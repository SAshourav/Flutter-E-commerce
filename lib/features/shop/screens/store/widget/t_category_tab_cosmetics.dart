import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/store/widget/t_brand_product.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTabCosmetics extends StatelessWidget {
  const TCategoryTabCosmetics({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    // No cosmetics brands in BrandDatabase, using placeholder
    final List<Map<String, dynamic>> suggestedProducts = [];

    // Add placeholder cosmetics products
    for (var i = 0; i < 10; i++) {
      suggestedProducts.add({
        'imageUrl': TImages.cosmeticsIcon,
        'title': 'Cosmetics Product ${i + 1}',
        'brand': 'Generic Cosmetics',
        'price': '19.99', // Placeholder price for cosmetics
      });
    }

    // Limit to 20 products for display
    final displayProducts = suggestedProducts.take(20).toList();

    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TBrandTopProducts(
                dark: dark,
                brandName: 'Generic Cosmetics',
                brandLogo: TImages.cosmeticsIcon,
                productImages: const [
                  TImages.cosmeticsIcon, // Placeholder
                  TImages.cosmeticsIcon, // Placeholder
                  TImages.cosmeticsIcon, // Placeholder
                ],
              ),
              TBrandTopProducts(
                dark: dark,
                brandName: 'Generic Beauty',
                brandLogo: TImages.cosmeticsIcon,
                productImages: const [
                  TImages.cosmeticsIcon, // Placeholder
                  TImages.cosmeticsIcon, // Placeholder
                  TImages.cosmeticsIcon, // Placeholder
                ],
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(title: "You might like", onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),
              GridLayout(
                itemCount: displayProducts.length,
                itemBuilder: (_, index) {
                  final product = displayProducts[index];
                  return ProductCardVertical(
                    imageUrl: product['imageUrl'],
                    title: product['title'],
                    brand: product['brand'],
                    price: product['price'],
                  );
                },
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}