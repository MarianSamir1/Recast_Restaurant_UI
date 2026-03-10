import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';

class CircleBlurText extends StatelessWidget {
  final String text;
  final bool isCircle;
  final double fontSize;
  const CircleBlurText({
    super.key,
    required this.text,
    this.isCircle = true,
    this.fontSize = 6,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.all(5.r),
          decoration: BoxDecoration(
            shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
            color: Colors.black.withValues(alpha: 0.40),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.40),
              width: 0.5,
            ),
          ),
          child: CustomText(
            text: text,
            textAlign: TextAlign.center,
            textStyle: AppStyles.satoshiMedium11White.copyWith(
              fontSize: fontSize.sp,
              height: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
