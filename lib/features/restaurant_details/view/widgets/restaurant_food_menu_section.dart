import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';

class RestaurantFoodMenuSection extends StatelessWidget {
  const RestaurantFoodMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h),
          //==================== Food Menu Title ====================
          CustomText(
            text: "Food Menu",
            textStyle: AppStyles.satoshiBold11WhiteOpac80,
          ),
          //==================== Food Menu Items ====================
          SizedBox(height: 15.h),
        ],
      ),
    );
  }
}
