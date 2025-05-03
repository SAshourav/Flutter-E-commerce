import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/products_cart/cart_menu_icon.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCardCounterIcon(
            onPressed: () => Get.to(const HomeScreen()),
            iconColor: dark ? Colors.white : Colors.black,
            icon: Iconsax.add,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                itemCount: 7,
                itemBuilder: (_, index) {
                  return const ProductCardVertical(
                    isFavorite: true,
                    discountPercentage: '15',
                    imageUrl: TImages.productImage11,
                    title: "Thest",
                    brand: "nike",
                    price: '24',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}