import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:waflo_admin/common/widgets/appbar/appbar.dart';
import 'package:waflo_admin/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:waflo_admin/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:waflo_admin/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:waflo_admin/utils/device/device_utility.dart';

import '../../../../common/widgets/products/ratings/rating_indicator_v1.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({
    Key? key

    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppBar(title: Text('Review & Ratings'), showBackArrow: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Text('Rating and reviews are verified and are people from people who use the same type of device that you use '),
              const SizedBox(height: TSizes.spaceBtwItems),

          // Overall Product Ratings 
          const OverallProductRating(),
          const RatingBarIndicatorV1(rating: 3.5),
          Text('12,611', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: TSizes.spaceBtwItems),

          // User Reviews List
          const UserReviewCard(),
          const UserReviewCard(),
          const UserReviewCard(),

          

          ],
        ),
        ),
      )


    );


  }
}





