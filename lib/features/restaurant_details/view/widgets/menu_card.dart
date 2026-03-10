import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';
import 'package:recast_restaurant_ui/core/styles/styles.dart';
import 'package:recast_restaurant_ui/core/widgets/other/custom_text.dart';
import 'package:recast_restaurant_ui/core/widgets/other/image_helper.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/model/menu_item.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/circle_blur_text.dart';

class MenuCard extends StatelessWidget {
  final MenuItem item;

  const MenuCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.r)),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            //==================== image =====================================
            Positioned.fill(
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
                  CircleBlurText(text: "${item.price}\nJOD"),
                ],
              ),
            ),
            //==================== Is Trending =============================
            if (item.isTrending)
              PositionedDirectional(
                start: 5.w,
                top: 5.w,
                child: CircleBlurText(
                  text: "Trending",
                  isCircle: false,
                  fontSize: 7,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
