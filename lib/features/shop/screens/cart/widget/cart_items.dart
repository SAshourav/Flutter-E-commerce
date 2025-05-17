import 'package:flutter/material.dart';

import '../../../../../common/widgets/products_cart/add_remove_button.dart';
import '../../../../../common/widgets/products_cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    required this.dark,
    this.showAddRemoveButton = true,
  });

  final bool dark;
  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      separatorBuilder: (_,__)=> const SizedBox(height: TSizes.spaceBtwSections,),
      itemCount: 5,
      itemBuilder: (_, index)=> Column(
        children: [
          CartItem(dark: dark),
          if(showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems,),
          if(showAddRemoveButton)
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
    );
  }
}