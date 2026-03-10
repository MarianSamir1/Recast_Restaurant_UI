import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/constants.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/menu_grid.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view_model/cubit.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view_model/state.dart';

class RestaurantFoodMenuSection extends StatelessWidget {
  const RestaurantFoodMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            //==================== Food Menu Title ====================
            CustomText(
              text: Constants.foodMenu,
              textStyle: AppStyles.satoshiBold11WhiteOpac80,
            ),
            //==================== Food Menu Items ====================
            SizedBox(height: 15.h),
            BlocBuilder<RestaurantDetailsCubit, RestaurantState>(
              buildWhen: (previous, current) =>
                  previous.restaurant != current.restaurant,
              builder: (context, state) =>
                  MenuGrid(items: state.restaurant!.menu),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
