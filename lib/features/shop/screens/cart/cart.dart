import 'package:flutter/material.dart';
import 'package:waflo_admin/common/widgets/appbar/appbar.dart';
import 'package:waflo_admin/common/widgets/texts/product_price_text.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          child: const Text('Checkout 250.000 đ'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: TColors.primary,
          ),
        ),
      ),
      appBar: TAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwSections),
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (_, index) => Column (
            children: [
              const CartItem(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      //Extra space
                      SizedBox(width: 70),
                      // Add Remove Button
                      ProductQuantityWithAddRemoveButton(),
                    ],
                  ),
                  const ProductPriceText(price: '250.000'),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}


