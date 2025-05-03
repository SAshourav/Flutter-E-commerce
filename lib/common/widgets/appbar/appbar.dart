import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/device/device_utility.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.showbackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showbackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showbackArrow
            ? IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Iconsax.arrow_left,
            color: dark ? Colors.white : const Color(0xFF333333), // White in dark mode, dark gray in light mode
          ),
        )
            : leadingIcon != null
            ? IconButton(
          onPressed: leadingOnPressed,
          icon: Icon(
            leadingIcon,
            color: dark ? Colors.white : const Color(0xFF333333), // White in dark mode, dark gray in light mode
          ),
        )
            : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}