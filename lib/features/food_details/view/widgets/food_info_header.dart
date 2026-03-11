import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/info_header.dart';
import 'package:recast_restaurant_ui/features/food_details/view_model/food_details_cubit.dart';

class FoodInfoHeader extends StatelessWidget {
  const FoodInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var state = context.read<FoodDetailsCubit>().state;
    return InfoHeader(
      title: state.foodDetails!.category,
      gradientTitle: state.foodDetails!.title,
      gradientTitleFont: 17.sp,
      gradientTitleColors: LinearGradient(
        colors: [
          ColorManager.primary,
          ColorManager.secondary,
          ColorManager.secondary,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      description: state.foodDetails!.description,
      descriptionColor: ColorManager.white,
    );
  }
}
