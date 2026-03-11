import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/constants.dart';
import 'package:recast_restaurant_ui/core/helper/navigation_extensions.dart';
import 'package:recast_restaurant_ui/core/routing/routes.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/blur_circle_contanier.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';
import 'package:recast_restaurant_ui/core/widgets/other/image_helper.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/model/menu_item.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/blur_rect_container.dart';

class MenuCard extends StatelessWidget {
  final MenuItem item;

  const MenuCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.foodDetailsScreen, arguments: item.id);
      },
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.r)),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            //==================== image =====================================
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 100.h,
                maxHeight: 150.h,
                maxWidth: double.infinity,
                minWidth: double.infinity,
              ),
              child: ImageHelper(
                image: item.image,
                imageType: ImageType.asset,
                boxFit: BoxFit.cover,
              ),
            ),
            //==================== blur background ===========================
            PositionedDirectional(
              bottom: 0,
              start: 0,
              end: 0,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          ColorManager.lightGray.withValues(alpha: 0.85),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //==================== text and price ============================
            PositionedDirectional(
              bottom: 9.h,
              start: 5.w,
              end: 5.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //title
                  Expanded(
                    child: CustomText(
                      text: item.title,
                      maxLines: 3,
                      textStyle: AppStyles.satoshiMedium11White.copyWith(
                        fontSize: 8.sp,
                        height: 1.0,
                      ),
                    ),
                  ),
                  SizedBox(width: 3.w),
                  //price
                  BlurCircleContainer(
                    blurColor: ColorManager.black.withValues(alpha: 0.4),
                    borderColor: ColorManager.white.withValues(alpha: 0.3),
                    child: CustomText(
                      text: "${item.price}\n${Constants.jod}",
                      textAlign: TextAlign.center,
                      textStyle: AppStyles.satoshiMedium11White.copyWith(
                        fontSize: 6.sp,
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //==================== Is Trending =============================
            if (item.isTrending)
              PositionedDirectional(
                start: 5.w,
                top: 5.w,
                child: BlurRectContainer(
                  borderColor: ColorManager.white.withValues(alpha: 0.3),
                  blurColor: ColorManager.black.withValues(alpha: 0.4),
                  child: CustomText(
                    text: Constants.trending,
                    textStyle: AppStyles.satoshiMedium11White.copyWith(
                      fontSize: 7.sp,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
