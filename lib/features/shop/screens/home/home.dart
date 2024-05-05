import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:waflo_admin/common/widgets/appbar/appbar.dart';
import 'package:waflo_admin/features/shop/screens/home/widgets/home_appbar.dart';

import '../../../../common/widgets/custome_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/products/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
                child: Column(
              children: const [
                // Appar
                HomeAppBar(),

                //Search Bar

                // Categories
              ],
            )),
          ],
        ),
      ),
    );
  }
}
