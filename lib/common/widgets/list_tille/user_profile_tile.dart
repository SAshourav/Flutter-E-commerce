import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/t_circular_image.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    required this.dark,
    required this.onTap,
  });

  final bool dark;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        dark: dark,
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text("MD SABBIR AHMED", style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text("sabbir.personal@proton.me", style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
      trailing: IconButton(onPressed: onTap, icon: const Icon(Iconsax.edit, color: TColors.white,)),
    );
  }
}