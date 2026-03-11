import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/icons_paths.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/custom_app_bar.dart';

class ImageHeaderWithAppBar extends StatelessWidget {
  final String imagePath;
  final bool showProfileIcon;
  final VoidCallback? onbackFun;
  const ImageHeaderWithAppBar({
    super.key,
    required this.imagePath,
    required this.showProfileIcon,
    this.onbackFun,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //===================== header image =====================
        Container(
          height: 249.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),

        //===================== app bar ============================
        CustomAppBar(
          backIcon: IconsPath.arrow,
          showProfileIcon: showProfileIcon,
          onbackFun: onbackFun,
        ),
        //===================== gradient ============================
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 50.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.95),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
