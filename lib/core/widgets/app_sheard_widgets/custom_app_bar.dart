import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/icons_paths.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/blur_circle_container.dart';
import 'package:recast_restaurant_ui/core/widgets/other/image_helper.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback? onbackFun;
  final bool showProfileIcon;
  const CustomAppBar({
    super.key,
    this.onbackFun,
    required this.showProfileIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //==================== back Icon ====================
            GestureDetector(
              onTap: onbackFun,
              child: BlurCircleContainer(
                padding: EdgeInsets.all(13.r),
                child: ImageHelper(
                  image: IconsPath.arrow,
                  imageType: ImageType.svg,
                  color: Colors.white,
                  width: 12.r,
                  height: 12.r,
                ),
              ),
            ),
            //==================== Profile icon ====================
            if (showProfileIcon)
              GestureDetector(
                onTap: () {},
                child: ImageHelper(
                  image: IconsPath.profile,
                  color: Colors.white,
                  imageType: ImageType.asset,
                  width: 30.r,
                  height: 30.r,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
