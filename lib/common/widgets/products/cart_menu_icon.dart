import 'package:flutter/material.dart%20';
import 'package:iconsax/iconsax.dart';
import 'package:waflo_admin/utils/constants/colors.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    Key? key,
    required this.onPressed,
    required this.iconColor,
  }) : super(key: key);
  final Color iconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.shopping_bag, color: TColors.white),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: TColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .apply(color: TColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
