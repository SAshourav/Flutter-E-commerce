import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/cart/cart.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products_cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';
import 'package:get/get.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),),
        Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.white),)
      ],
    ),
      actions: [
        TCardCounterIcon(onPressed: ()=> Get.to(()=> const CartScreen()), iconColor: TColors.white, icon: Iconsax.shopping_cart,)
      ],
    );
  }
}