import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/constants.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/atmosphere_item.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view_model/cubit.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view_model/state.dart';

class RestaurantAtmosphereSection extends StatelessWidget {
  const RestaurantAtmosphereSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.h),
          //==================== Atmosphere Title ==========================
          CustomText(
            text: Constants.atmosphere,
            textStyle: AppStyles.satoshiBold11WhiteOpac80,
          ),
          SizedBox(height: 15.h),
          //==================== Atmosphere Images List ====================
          BlocBuilder<RestaurantDetailsCubit, RestaurantState>(
            buildWhen: (previous, current) =>
                previous.restaurant != current.restaurant,
            builder: (context, state) => SizedBox(
              height: 239.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 8.w),
                itemBuilder: (context, index) => AtmosphereItem(
                  imagePath: state.restaurant!.atmosphereImagesList[index],
                ),
                itemCount: state.restaurant!.atmosphereImagesList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
