import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/widgets/other/image_helper.dart';

class CircleIcon extends StatelessWidget {
  final String iconPath;
  const CircleIcon({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.r), // دائري
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.all(13.r),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withValues(alpha: 0.40),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: ImageHelper(
            image: iconPath,
            imageType: ImageType.svg,
            color: Colors.white,
            width: 13.r,
            height: 13.r,
          ),
        ),
      ),
    );
  }
}
