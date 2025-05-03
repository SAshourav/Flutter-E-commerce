import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/store/widget/t_brand_product.dart';
import 'package:t_store/utils/constants/BrandDatabase.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    // Filter sports-related brands from BrandDatabase
    final sportsBrands = BrandDatabase.brands.where((brand) =>
        ['Nike', 'Adidas', 'Jordan', 'Puma'].contains(brand['brandName'])).toList();

    // Collect product images from sports brands
    final List<Map<String, dynamic>> suggestedProducts = [];
    for (var brand in sportsBrands) {
      for (var image in (brand['productImages'] as List<String>)) {
        suggestedProducts.add({
          'imageUrl': image,
          'title': '${brand['brandName']} Product',
          'brand': brand['brandName'],
          'price': '49.99', // Placeholder price
        });
      }
    }

    // Limit to 4 products for display
    final displayProducts = suggestedProducts.take(20).toList();

    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TBrandTopProducts(dark: dark, brandName: 'Nike', brandLogo: TImages.nikeLogo, productImages: const [TImages.productImage8,TImages.productImage3,TImages.productImage10],),
              TBrandTopProducts(dark: dark, brandName: 'Adidas', brandLogo: TImages.adidasLogo, productImages: const [TImages.productImage5, TImages.productImage67, TImages.productImage21],),

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