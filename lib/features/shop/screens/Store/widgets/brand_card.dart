import 'package:flutter/material.dart';
import 'package:waflo_admin/utils/constants/colors.dart';

import '../../../../../common/widgets/containers/rounded_container.dart';
import '../../../../../common/widgets/images/circular_image.dart';
import '../../../../../common/widgets/texts/brand_title_text_with_verified_icon.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/images_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    required this.showBorder,
    this.padding = TSizes.sm,
    Key? key,
  }) : super(key: key);
  final bool showBorder;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: RoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: CircularImage(
                isNetworkImage: false,
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),

            //Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const BrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
