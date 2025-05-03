import 'package:t_store/utils/constants/image_strings.dart';

class BrandDatabase {
  static final List<Map<String, dynamic>> brands = [
    {
      'brandName': 'Nike',
      'brandLogo': TImages.nikeLogo,
      'productImages': [
        TImages.productImage1, // nike-shoes.png
        TImages.productImage7, // NikeAirJOrdonBlackRed.png
        TImages.productImage8, // NikeAirJOrdonOrange.png
        TImages.productImage9, // NikeAirJordonwhiteMagenta.png
        TImages.productImage10, // NikeAirJOrdonWhiteRed.png
        TImages.productImage19, // NikeAirJordonSingleBlue.png
        TImages.productImage20, // NikeAirJordonSingleOrange.png
        TImages.productImage21, // NikeAirMax.png
        TImages.productImage22, // NikeBasketballShoeGreenBlack.png
        TImages.productImage23, // NikeWildhorse.png
      ],
    },
    {
      'brandName': 'Adidas',
      'brandLogo': TImages.adidasLogo,
      'productImages': [
        TImages.productImage28, // Adidas_Football.png
        TImages.productImage24, // tracksuit_black.png
        TImages.productImage25, // tracksuit_blue.png
        TImages.productImage26, // tracksuit_red.png
        TImages.productImage27, // trcksuit_parrotgreen.png
      ],
    },
    {
      'brandName': 'Apple',
      'brandLogo': TImages.appleLogo,
      'productImages': [
        TImages.productImage14, // iphone8_mobile.png
        TImages.productImage15, // iphone8_mobile_back.png
        TImages.productImage16, // iphone8_mobile_dual_side.png
        TImages.productImage17, // iphone8_mobile_front.png
        TImages.productImage51, // iphone_13_pro.png
        TImages.productImage52, // iphone_14_pro.png
        TImages.productImage53, // iphone_14_white.png
        TImages.productImage70, // iphone_12_red.png
        TImages.productImage71, // iphone_12_blue.png
        TImages.productImage72, // iphone_12_green.png
        TImages.productImage73, // iphone_12_black.png
      ],
    },
    {
      'brandName': 'IKEA',
      'brandLogo': TImages.ikeaLogo,
      'productImages': [
        TImages.productImage32, // bedroom_bed.png
        TImages.productImage33, // bedroom_lamp.png
        TImages.productImage34, // bedroom_sofa.png
        TImages.productImage35, // bedroom_wardrobe.png
        TImages.productImage43, // bedroom_bed_black.png
        TImages.productImage44, // bedroom_bed_grey.png
        TImages.productImage45, // bedroom_bed_simple_brown.png
        TImages.productImage46, // bedroom_bed_with_comforter.png
        TImages.productImage36, // kitchen_counter.png
        TImages.productImage37, // kitchen_dining table.png
        TImages.productImage38, // kitchen_refrigerator.png
      ],
    },
    {
      'brandName': 'Acer',
      'brandLogo': TImages.acerlogo,
      'productImages': [
        TImages.productImage47, // acer_laptop_1.png
        TImages.productImage48, // acer_laptop_2.png
        TImages.productImage49, // acer_laptop_3.png
        TImages.productImage50, // acer_laptop_4.png
        TImages.productImage56, // acer_laptop_var_1.png
        TImages.productImage57, // acer_laptop_var_2.png
        TImages.productImage58, // acer_laptop_var_3.png
        TImages.productImage59, // acer_laptop_var_4.png
      ],
    },
    {
      'brandName': 'Zara',
      'brandLogo': TImages.zaraLogo,
      'productImages': [
        TImages.productImage3, // product-jacket.png
        TImages.productImage4, // product-jeans.png
        TImages.productImage5, // product-shirt.png
        TImages.productImage54, // product-shirt_blue_1.png
        TImages.productImage55, // product-shirt_blue_2.png
        TImages.productImage60, // tshirt_red_collar.png
        TImages.productImage61, // tshirt_yellow_collar.png
        TImages.productImage62, // tshirt_green_collar.png
        TImages.productImage63, // tshirt_blue_collar.png
        TImages.productImage64, // leather_jacket_1.png
        TImages.productImage65, // leather_jacket_2.png
        TImages.productImage66, // leather_jacket_3.png
        TImages.productImage67, // leather_jacket_4.png
        TImages.productImage68, // tshirt_blue_without_collar_back.png
        TImages.productImage69, // tshirt_blue_without_collar_front.png
      ],
    },
    {
      'brandName': 'Puma',
      'brandLogo': TImages.pumaLogo,
      'productImages': [
        TImages.productImage6, // product-slippers.png
        TImages.productImage74, // slipper-product-1.png
        TImages.productImage75, // slipper-product-2.png
        TImages.productImage76, // slipper-product-3.png
        TImages.productImage77, // slipper-product.png
      ],
    },
    {
      'brandName': 'Jordan',
      'brandLogo': TImages.jordanLogo,
      'productImages': [
        TImages.productImage7, // NikeAirJOrdonBlackRed.png (shared with Nike)
        TImages.productImage8, // NikeAirJOrdonOrange.png (shared with Nike)
        TImages.productImage9, // NikeAirJordonwhiteMagenta.png (shared with Nike)
        TImages.productImage10, // NikeAirJOrdonWhiteRed.png (shared with Nike)
      ],
    },
    {
      'brandName': 'Herman Miller',
      'brandLogo': TImages.hermanMillerLogo,
      'productImages': [
        TImages.productImage39, // office_chair_1.png
        TImages.productImage40, // office_chair_2.png
        TImages.productImage41, // office_desk_1.png
        TImages.productImage42, // office_desk_2.png
      ],
    },
    {
      'brandName': 'Kenwood',
      'brandLogo': TImages.kenwoodLogo,
      'productImages': [
        TImages.productImage36, // kitchen_counter.png (shared with IKEA)
        TImages.productImage38, // kitchen_refrigerator.png (shared with IKEA)
      ],
    },
  ];
}