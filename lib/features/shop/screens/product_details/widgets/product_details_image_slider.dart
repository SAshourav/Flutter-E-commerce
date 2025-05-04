import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/curved_edges/curvedEdgeWidgets.dart';
import '../../../../../common/widgets/images/t_rounded_images.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.dark, required this.image,
  });

  final bool dark;
  final String image;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidgets(
      child: Container(
        color: dark ? const Color(0xFF2A3C34) : const Color(0xFFF5E8C7),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical: TSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main Image with Subtle Zoom Effect
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(TSizes.productImageRadius),
                  boxShadow: [
                    BoxShadow(
                      color: dark ? Colors.black.withOpacity(0.3) : Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(TSizes.productImageRadius),
                  child: SizedBox(
                    height: 340,
                    width: double.infinity,
                    child: Image.asset(
                      TImages.productImage26,
                      fit: BoxFit.contain,
                      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                        return Transform.scale(
                          scale: 1.05, // Subtle zoom effect
                          child: child,
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Thumbnail Slider with Centered Alignment
              Center(
                child: SizedBox(
                  height: 100,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                    itemCount: 5,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (_, index) => TRoundedImage(
                      backgroundColor: dark ? const Color(0xFF1A1A1A) : const Color(0xFFD9C9A9),
                      border: Border.all(color: const Color(0xFF8B5A2B)), // Warm brown border
                      padding: const EdgeInsets.all(TSizes.sm),
                      width: 80,
                      imageUrl: image,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}