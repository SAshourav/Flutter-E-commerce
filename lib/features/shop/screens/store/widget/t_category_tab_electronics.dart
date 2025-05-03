import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/store/widget/t_brand_product.dart';
import 'package:t_store/utils/constants/BrandDatabase.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTabElectronics extends StatelessWidget {
  const TCategoryTabElectronics({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    // Filter electronics-related brands from BrandDatabase
    final electronicsBrands = BrandDatabase.brands.where((brand) =>
        ['Apple', 'Acer'].contains(brand['brandName'])).toList();

    // Collect product images from electronics brands
    final List<Map<String, dynamic>> suggestedProducts = [];
    for (var brand in electronicsBrands) {
      for (var image in (brand['productImages'] as List<String>)) {
        suggestedProducts.add({
          'imageUrl': image,
          'title': '${brand['brandName']} Device',
          'brand': brand['brandName'],
          'price': '299.99', // Placeholder price for electronics
        });
      }
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
                brandName: 'Apple',
                brandLogo: TImages.appleLogo,
                productImages: const [
                  TImages.productImage51, // iphone_13_pro.png
                  TImages.productImage52, // iphone_14_pro.png
                  TImages.productImage53, // iphone_14_white.png
                ],
              ),
              TBrandTopProducts(
                dark: dark,
                brandName: 'Acer',
                brandLogo: TImages.acerlogo,
                productImages: const [
                  TImages.productImage47, // acer_laptop_1.png
                  TImages.productImage48, // acer_laptop_2.png
                  TImages.productImage49, // acer_laptop_3.png
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