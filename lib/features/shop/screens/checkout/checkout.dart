import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/TRoundedContainer.dart';
import 'package:t_store/features/shop/screens/cart/widget/cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products_cart/coupon_widget.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? const Color(0xFF2A3C34) : const Color(0xFFF5E8C7),
      appBar: TAppBar(title: Text('Checkout', style: Theme.of(context).textTheme.headlineSmall,),showbackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Showing Cart Items
              CartItems(showAddRemoveButton: false, dark: dark,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              //  Coupon Code
              CouponCodeApply(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections,),
              // Billing Section
              Troundedcontainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    /// Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    /// Payment Method
                    BillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    /// Address
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections,),
              SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text("Checkout")))
            ],
          ),
        ),
      ),
    );
  }
}


