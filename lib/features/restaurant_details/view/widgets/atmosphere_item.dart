import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/widgets/other/image_helper.dart';

class AtmosphereItem extends StatelessWidget {
  final String imagePath;
  const AtmosphereItem({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
      child: ImageHelper(
        image: imagePath,
        imageType: ImageType.asset,
        width: 1.sw - 60.w,
        boxFit: BoxFit.cover,
      ),
    );
  }
}
