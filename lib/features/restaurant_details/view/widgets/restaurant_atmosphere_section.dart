import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/images_paths.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';
import 'package:recast_restaurant_ui/core/widgets/other/image_helper.dart';

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
          //==================== Atmosphere Title ====================
          CustomText(
            text: "Atmosphere",
            textStyle: AppStyles.satoshiBold11WhiteOpac80,
          ),
          //==================== Atmosphere Images ====================
          SizedBox(height: 15.h),
          SizedBox(
            height: 239.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 8.w),
              itemBuilder: (context, index) => Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ImageHelper(
                  image: ImagesPaths.atmosphere1,
                  imageType: ImageType.asset,
                  width: 1.sw - 60.w,
                  boxFit: BoxFit.cover,
                ),
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
