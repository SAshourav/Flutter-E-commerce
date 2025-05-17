import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/screens/cart/widget/cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/checkout.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:get/get.dart';
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
        child: CartItems(dark: dark),
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: dark ? OutlinedButton(onPressed: ()=>Get.to(()=> const CheckoutScreen()), child: const Text('Checkout \$256.0')) : ElevatedButton(onPressed: ()=>Get.to(()=> const CheckoutScreen()), child: const Text('Checkout \$256.0')),
      )
    );
  }
}






