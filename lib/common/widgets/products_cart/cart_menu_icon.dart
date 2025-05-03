import 'package:flutter/material.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../utils/constants/colors.dart';

class TCardCounterIcon extends StatelessWidget {
  const TCardCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor, required this.icon,
  });

  final VoidCallback onPressed;
  final Color? iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: iconColor ?? (dark ? TColors.white : TColors.black),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.apply(color: dark ? TColors.white : TColors.black, fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
