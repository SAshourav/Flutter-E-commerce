import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/appbar/tab_bar.dart';
import 'package:t_store/common/widgets/brand/all_brands.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/store/widget/T_category_tab.dart';
import 'package:t_store/features/shop/screens/store/widget/furniture_tab.dart';
import 'package:t_store/features/shop/screens/store/widget/t_category_tab_cloths.dart';
import 'package:t_store/features/shop/screens/store/widget/t_category_tab_cosmetics.dart';
import 'package:t_store/features/shop/screens/store/widget/t_category_tab_electronics.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import 'package:t_store/common/widgets/brand_card/brand_card.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // Define featured brands list using TImages
    final List<Map<String, dynamic>> featuredBrands = [
      {'image': TImages.nikeLogo, 'title': 'Nike', 'productCount': 120},
      {'image': TImages.adidasLogo, 'title': 'Adidas', 'productCount': 85},
      {'image': TImages.appleLogo, 'title': 'Apple', 'productCount': 45},
      {'image': TImages.ikeaLogo, 'title': 'IKEA', 'productCount': 60},
    ];

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: dark ? const Color(0xFF2A3C34) : const Color(0xFFF5E8C7),
        appBar: TAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCardCounterIcon(onPressed: () {}, iconColor: Colors.white, icon: Iconsax.add,),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                  backgroundColor: dark ? const Color(0xFF2A3C34) : const Color(0xFFF5E8C7),
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: TSizes.spaceBtwItems),
                      // Search Bar
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: true,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                      // Featured Brands
                      TSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: ()=> const AllBrandsScreen(),
                        textColor: dark ? TColors.white : TColors.black,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      GridLayout(
                        itemCount: featuredBrands.length,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          final brand = featuredBrands[index];
                          return TBrandCard(
                            dark: dark,
                            brandImage: brand['image'],
                            brandTitle: brand['title'],
                            productCount: brand['productCount'],
                          );
                        },
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                    ],
                  ),
                ),
                bottom: const TTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Cloths')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              TCategoryTab(dark: dark),
              TCategoryTabFurniture(dark: dark),
              TCategoryTabElectronics(dark: dark),
              TCategoryTabCloths(dark: dark,),
              TCategoryTabCosmetics(dark: dark,),
            ],
          ),
        ),
      ),
    );
  }
}