import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/gradient_test.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';

class InfoHeader extends StatelessWidget {
  final String title;
  final String gradientTitle;
  final String description;
  final Color? descriptionColor;

  const InfoHeader({
    super.key,
    required this.title,
    required this.gradientTitle,
    required this.description,
    this.descriptionColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //==================== Restaurant Name ===========================
          CustomText(
            text: title,
            textStyle: AppStyles.satoshiBold11WhiteOpac80.copyWith(
              height: 1,
              fontSize: 10.sp,
            ),
          ),
          GradientText(
            text: gradientTitle,
            style: AppStyles.satoshiBold22.copyWith(height: 1.2),
            gradient: LinearGradient(
              colors: [ColorManager.primary, ColorManager.secondary],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          //==================== Restaurant Description ====================
          SizedBox(height: 4.h),
          CustomText(
            text: description,
            textStyle: AppStyles.satoshiMedium11White.copyWith(
              fontSize: 10.sp,
              color:
                  descriptionColor ?? ColorManager.white.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
