import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/personalization/screens/orders/widgets/single_order.dart';
import 'package:t_store/utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark  = THelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? const Color(0xFF2A3C34) : const Color(0xFFF5E8C7),
      appBar: const TAppBar(title: Text("My orders"),showbackArrow: true,),
      body: const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            SingleOrder(),
            SingleOrder(),
          ],
        ),
      ),
    );
  }
}


