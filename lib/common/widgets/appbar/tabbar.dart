import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    Key? key,
    required this.tabs,
  }) : super(key: key);
  final List<Widget> tabs;

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        labelColor: dark ? TColors.white : TColors.primary,
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }
}
