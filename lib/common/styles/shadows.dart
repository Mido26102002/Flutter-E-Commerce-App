import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class ShadowStyle {
  static final verticalProducScreen = BoxShadow(
    color: TColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductScreen = BoxShadow(
    color: TColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(2, 0),
  );
}
