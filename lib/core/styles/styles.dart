import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/constants.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';

class AppStyles {
  static String satoshifontFamily = Constants.satoshifontFamily;
  //medium
  static TextStyle satoshiMedium11White = TextStyle(
    fontFamily: satoshifontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 11.sp,
    color: ColorManager.white,
  );

  //bold
  static TextStyle satoshiBold22 = TextStyle(
    fontFamily: satoshifontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 22.sp,
  );
  static TextStyle satoshiBold11WhiteOpac80 = TextStyle(
    fontFamily: satoshifontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 11.sp,
    color: ColorManager.white.withValues(alpha: 0.8),
  );
  static TextStyle satoshiBold10Black = TextStyle(
    fontFamily: satoshifontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 10.sp,
    color: ColorManager.black,
  );
  static TextStyle satoshiBold10LightGray = TextStyle(
    fontFamily: satoshifontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 10.sp,
    color: ColorManager.lightGray,
  );
}
