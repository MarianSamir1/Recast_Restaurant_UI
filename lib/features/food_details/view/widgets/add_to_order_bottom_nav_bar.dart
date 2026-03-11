import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/icons_paths.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/blur_circle_container.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/gradient_test.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';
import 'package:recast_restaurant_ui/core/widgets/other/image_helper.dart';

class AddToOrderBottomNavBar extends StatelessWidget {
  const AddToOrderBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 45.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //==================== total price + tax & service ============================
              Column(
                children: [
                  GradientText(
                    text: "45.95 JD",
                    style: AppStyles.satoshiBold22.copyWith(fontSize: 15.sp),
                    gradient: const LinearGradient(
                      colors: [ColorManager.primary, ColorManager.secondary],
                    ),
                  ),
                  CustomText(
                    text: "+ tax & service",
                    textStyle: AppStyles.satoshiBold10LightGray,
                  ),
                ],
              ),
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
                          text: "Add to Order",
                          textStyle: AppStyles.satoshiBold10Black,
                        ),
                        SizedBox(width: 5.w),
                        //blus icon
                        BlurCircleContainer(
                          padding: EdgeInsets.all(12.r),
                          blurColor: ColorManager.black.withValues(alpha: 0.2),
                          borderColor: ColorManager.black.withValues(
                            alpha: 0.1,
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
