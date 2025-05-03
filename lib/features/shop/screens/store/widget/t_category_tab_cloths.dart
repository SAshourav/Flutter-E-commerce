import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/store/widget/t_brand_product.dart';
import 'package:t_store/utils/constants/BrandDatabase.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTabCloths extends StatelessWidget {
  const TCategoryTabCloths({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    // Filter cloths-related brands from BrandDatabase
    final clothsBrands = BrandDatabase.brands.where((brand) =>
        ['Zara'].contains(brand['brandName'])).toList();

    // Collect product images from cloths brands
    final List<Map<String, dynamic>> suggestedProducts = [];
    for (var brand in clothsBrands) {
      for (var image in (brand['productImages'] as List<String>)) {
        suggestedProducts.add({
          'imageUrl': image,
          'title': '${brand['brandName']} Clothing',
          'brand': brand['brandName'],
          'price': '39.99', // Placeholder price for cloths
        });
      }
    }

    // Add some generic clothing products to ensure enough items
    suggestedProducts.addAll([
      {
        'imageUrl': TImages.productImage60, // tshirt_red_collar.png
        'title': 'Generic T-Shirt',
        'brand': 'Generic',
        'price': '29.99',
      },
      {
        'imageUrl': TImages.productImage64, // leather_jacket_1.png
        'title': 'Generic Jacket',
        'brand': 'Generic',
        'price': '59.99',
      },
    ]);

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
                brandName: 'Zara',
                brandLogo: TImages.zaraLogo,
                productImages: const [
                  TImages.productImage3, // product-jacket.png
                  TImages.productImage5, // product-shirt.png
                  TImages.productImage60, // tshirt_red_collar.png
                ],
              ),
              TBrandTopProducts(
                dark: dark,
                brandName: 'Generic',
                brandLogo: TImages.clothIcon, // Using cloth icon as placeholder
                productImages: const [
                  TImages.productImage64, // leather_jacket_1.png
                  TImages.productImage68, // tshirt_blue_without_collar_back.png
                  TImages.productImage69, // tshirt_blue_without_collar_front.png
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