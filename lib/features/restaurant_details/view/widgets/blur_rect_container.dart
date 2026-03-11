import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/blur_container.dart';

class BlurRectContainer extends BlurContainer {
  final double minWidth;
  final double minHeight;
  final double radius;

  const BlurRectContainer({
    super.key,
    required super.child,
    this.minWidth = 40,
    this.minHeight = 20,
    this.radius = 10,
    required super.blurColor,
    required super.borderColor,
  });

  @override
  BoxDecoration buildDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius.r),
      border: Border.all(color: borderColor, width: 0.5),
    );
  }

  @override
  Widget buildClip(Widget child) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius.r),
      child: child,
    );
  }

  @override
  BoxConstraints buildConstraints() {
    return BoxConstraints(minWidth: minWidth.w, minHeight: minHeight.h);
  }
}
