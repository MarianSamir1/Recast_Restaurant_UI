import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/constants.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';

class AppStyles {
  static String satoshifontFamily = Constants.satoshifontFamily;
  //medium
  static TextStyle satoshiMedium11White({double fontSize = 11}) {
    return TextStyle(
      fontFamily: satoshifontFamily,
      fontWeight: FontWeight.w500,
      fontSize: fontSize.sp,
      color: ColorManager.white,
    );
  }

  //bold
  static TextStyle satoshiBold18LinearGradient({double fontSize = 18}) {
    return TextStyle(
      fontFamily: satoshifontFamily,
      fontWeight: FontWeight.w700,
      fontSize: fontSize.sp,
      foreground: Paint()
        ..shader = LinearGradient(
          colors: [ColorManager.primary, ColorManager.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
    );
  }
}
