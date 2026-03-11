import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/constants.dart';
import 'package:recast_restaurant_ui/core/constants/icons_paths.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/blur_circle_contanier.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/gradient_test.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';
import 'package:recast_restaurant_ui/core/widgets/other/image_helper.dart';
import 'package:recast_restaurant_ui/features/food_details/view_model/food_details_cubit.dart';

class AddToOrderBottomNavBar extends StatelessWidget {
  const AddToOrderBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<FoodDetailsCubit>().state;
    return SafeArea(
      child: SizedBox(
        height: 45.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              //==================== total price + tax & service ============================
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GradientText(
                      text: "${cubit.foodDetails!.price} ${Constants.jd}",
                      maxLines: 1,
                      style: AppStyles.satoshiBold22.copyWith(fontSize: 15.sp),
                      gradient: const LinearGradient(
                        colors: [ColorManager.primary, ColorManager.secondary],
                      ),
                    ),
                    CustomText(
                      text: Constants.taxAndService,
                      textStyle: AppStyles.satoshiBold10LightGray,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              //==================== add to order button ============================
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 14.w,
                      right: 6.w,
                      top: 5.h,
                      bottom: 5.h,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          ColorManager.primary,
                          ColorManager.secondary,
                          ColorManager.secondary,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      border: Border.all(
                        color: ColorManager.white.withValues(alpha: 0.3),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: Row(
                      children: [
                        //text
                        CustomText(
                          text: Constants.addToOrder,
                          textStyle: AppStyles.satoshiBold10Black,
                        ),
                        SizedBox(width: 5.w),
                        //blus icon
                        BlurCircleContainer(
                          borderWidth: 1,
                          blurColor: ColorManager.black.withValues(alpha: 0.2),
                          borderColor: ColorManager.black.withValues(
                            alpha: 0.3,
                          ),
                          child: ImageHelper(
                            image: IconsPath.iosArrow,
                            imageType: ImageType.svg,
                            width: 11.r,
                            height: 11.r,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
