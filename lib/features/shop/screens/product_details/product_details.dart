import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:waflo_admin/common/widgets/appbar/appbar.dart';
import 'package:waflo_admin/common/widgets/custome_shapes/curved_edges/curved_edges_widget.dart';
import 'package:waflo_admin/common/widgets/icons/circular_icon.dart';
import 'package:waflo_admin/common/widgets/images/rounded_image.dart';
import 'package:waflo_admin/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:waflo_admin/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:waflo_admin/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:waflo_admin/utils/constants/images_strings.dart';
import 'package:waflo_admin/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            const ProductImageSlider(),

            // Product Details

            Padding(
              padding:  const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column (
                children: [
                  // Rating & share button
                  const RatingAndShare(),

                  //    Price, Title, Stock & Brand
                  const ProductMetaData(),
                   
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}


