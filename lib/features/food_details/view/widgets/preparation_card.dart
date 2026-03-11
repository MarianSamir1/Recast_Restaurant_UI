import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';

class PreparationCard extends StatelessWidget {
  final String text;
  const PreparationCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
      decoration: BoxDecoration(
        color: ColorManager.white.withValues(alpha: 0.30),
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: ColorManager.white.withValues(alpha: 0.18),
          width: 1,
        ),
      ),
      child: CustomText(
        text: text,
        textStyle: AppStyles.satoshiBold10Black.copyWith(
          color: ColorManager.white,
        ),
      ),
    );
  }
}
