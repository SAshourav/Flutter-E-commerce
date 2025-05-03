import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/store/widget/t_brand_product.dart';
import 'package:t_store/utils/constants/BrandDatabase.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTabFurniture extends StatelessWidget {
  const TCategoryTabFurniture({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    // Filter furniture-related brands from BrandDatabase
    final furnitureBrands = BrandDatabase.brands.where((brand) =>
        ['IKEA', 'Herman Miller', 'Kenwood'].contains(brand['brandName'])).toList();

    // Collect product images from furniture brands
    final List<Map<String, dynamic>> suggestedProducts = [];
    for (var brand in furnitureBrands) {
      for (var image in (brand['productImages'] as List<String>)) {
        suggestedProducts.add({
          'imageUrl': image,
          'title': '${brand['brandName']} Furniture',
          'brand': brand['brandName'],
          'price': '199.99', // Placeholder price for furniture
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
                brandName: 'IKEA',
                brandLogo: TImages.ikeaLogo,
                productImages: const [
                  TImages.productImage32, // bedroom_bed.png
                  TImages.productImage34, // bedroom_sofa.png
                  TImages.productImage37, // kitchen_dining table.png
                ],
              ),
              TBrandTopProducts(
                dark: dark,
                brandName: 'Herman Miller',
                brandLogo: TImages.hermanMillerLogo,
                productImages: const [
                  TImages.productImage39, // office_chair_1.png
                  TImages.productImage41, // office_desk_1.png
                  TImages.productImage40, // office_chair_2.png
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