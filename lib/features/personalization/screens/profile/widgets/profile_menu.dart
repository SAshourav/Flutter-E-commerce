import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProfileMenu extends StatelessWidget {
  const TProfileMenu({
    super.key,
    this.icon = Iconsax.arrow_right_34,
    required this.onPressed,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: dark ? const Color(0xFFF5E8C7) : const Color(0xFF2A3C34), // Warm off-white in dark, forest green in light
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: dark ? const Color(0xFFF5E8C7) : const Color(0xFF1A1A1A), // Warm off-white in dark, near black in light
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Expanded(
              child: Icon(
                icon,
                size: 18,
                color: dark ? const Color(0xFF8B5A2B) : const Color(0xFF2A3C34), // Warm brown in dark, forest green in light
              ),
            ),
          ],
        ),
      ),
    );
  }
}