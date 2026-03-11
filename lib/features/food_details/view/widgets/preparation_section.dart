import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/constants.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';
import 'package:recast_restaurant_ui/features/food_details/view/widgets/preparation_card.dart';
import 'package:recast_restaurant_ui/features/food_details/view_model/food_details_cubit.dart';

class PreparationSection extends StatelessWidget {
  const PreparationSection({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<FoodDetailsCubit>().state;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //================= title ============================
          SizedBox(height: 15.h),
          CustomText(
            text: Constants.preparation,
            textStyle: AppStyles.satoshiBold11WhiteOpac80,
          ),
          SizedBox(height: 9.h),
          //=================
          Row(
            children: [
              PreparationCard(
                text:
                    "${cubit.foodDetails!.preparationMinutes} ${Constants.minutes}",
              ),
              SizedBox(width: 4.w),
              PreparationCard(
                text:
                    "${Constants.servingSize}: ${cubit.foodDetails!.servingSize}",
              ),
            ],
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
