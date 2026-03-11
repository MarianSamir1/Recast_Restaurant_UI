import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:recast_restaurant_ui/core/constants/constants.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/menu_card.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view_model/cubit.dart';

class RestaurantFoodMenuSection extends StatelessWidget {
  const RestaurantFoodMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<RestaurantDetailsCubit>().state;
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
            //==================== Food Menu Grid Items ====================
            SizedBox(height: 15.h),
            MasonryGridView.count(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.restaurant!.menu.length,
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              itemBuilder: (_, index) {
                return MenuCard(item: state.restaurant!.menu[index]);
              },
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
