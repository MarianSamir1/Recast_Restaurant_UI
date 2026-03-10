import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/gradient_test.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view_model/cubit.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view_model/state.dart';

class RestaurantDescriptionSection extends StatelessWidget {
  const RestaurantDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantDetailsCubit, RestaurantState>(
      buildWhen: (previous, current) =>
          previous.restaurant != current.restaurant,
      builder: (context, state) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            //==================== Restaurant Name ===========================
            CustomText(
              text: state.restaurant!.fname,
              textStyle: AppStyles.satoshiBold11WhiteOpac80.copyWith(
                height: 1,
                fontSize: 10.sp,
              ),
            ),
            GradientText(
              text: state.restaurant!.lname.toUpperCase(),
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
              text: state.restaurant!.description,
              textStyle: AppStyles.satoshiMedium11White.copyWith(
                fontSize: 10.sp,
                color: ColorManager.white.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
