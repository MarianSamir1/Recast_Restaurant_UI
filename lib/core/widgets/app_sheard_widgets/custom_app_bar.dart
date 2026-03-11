import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/icons_paths.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/circle_blur_icon.dart';
import 'package:recast_restaurant_ui/core/widgets/other/image_helper.dart';

class CustomAppBar extends StatelessWidget {
  final String backIcon;
  final VoidCallback? onbackFun;
  final bool showProfileIcon;
  const CustomAppBar({
    super.key,
    required this.backIcon,
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
              child: CircleBlurIcon(iconPath: backIcon),
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
