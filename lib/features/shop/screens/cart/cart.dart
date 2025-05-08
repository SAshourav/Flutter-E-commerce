import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/utils/constants/sizes.dart';
import '../../../../common/widgets/products_cart/add_remove_button.dart';
import '../../../../common/widgets/products_cart/cart_item.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? const Color(0xFF2A3C34) : const Color(0xFFF5E8C7),
      appBar: TAppBar(title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall,),showbackArrow: true,),
      body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          separatorBuilder: (_,__)=> const SizedBox(height: TSizes.spaceBtwSections,),
          itemCount: 10,
          itemBuilder: (_, index)=> Column(
            children: [
              CartItem(dark: dark),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ProductQuantityWithAddRemove(dark: dark)      ,
                    ],
                  ),
                  const ProductPriceText(price: '256')
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: dark ? OutlinedButton(onPressed: (){}, child: const Text('Checkout \$256.0')) : ElevatedButton(onPressed: (){}, child: const Text('Checkout \$256.0')),
      )
    );
  }
}




