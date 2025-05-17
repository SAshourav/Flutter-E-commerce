import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeading(title: "Shipping Address", buttonTitle: 'Change', onPressed: (){},),
      ],
    );
  }
}
