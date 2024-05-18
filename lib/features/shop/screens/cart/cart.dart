import 'package:flutter/material.dart';
import 'package:waflo_admin/common/widgets/appbar/appbar.dart';
import 'package:waflo_admin/common/widgets/images/rounded_image.dart';
import 'package:waflo_admin/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:waflo_admin/common/widgets/texts/product_title_text.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwSections),
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (_, index) => Column (
              children: [
                Row(
                  children: [
                    // Image
                    RoundedImage(
                      imageUrl: TImages.productImage39,
                      width: 60,
                      height: 60,
                      padding: const EdgeInsets.all(TSizes.sm),
                      backgroundColor: dark ? TColors.darkerGrey : TColors.light,
                    ),
                    const SizedBox(width: TSizes.spaceBtwItems),

                    // Title, Price, Title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BrandTitleTextWithVerifiedIcon(title: 'Nike'),
                        ProductTitleText(title: 'Red Nike Air Max 270', maxLines:  1),
                        
                        // Attributes
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(text: 'Red ', style: Theme.of(context).textTheme.bodyLarge),
                              TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(text: '38 ', style: Theme.of(context).textTheme.bodyLarge),

                              
                            ]
                          )
                        )

                      ],
                    )
                  ]
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
