import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/blur_container.dart';

class BlurCircleContainer extends BlurContainer {
  final double size;
  final double borderWidth;

  const BlurCircleContainer({
    super.key,
    this.borderWidth = 0.5,
    required super.child,
    this.size = 30,
    required super.blurColor,
    required super.borderColor,
  });

  @override
  BoxDecoration buildDecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: borderColor,
        width: borderWidth,
      ),
    );
  }

  @override
  Widget buildClip(Widget child) {
    return ClipOval(child: child);
  }

  @override
  BoxConstraints buildConstraints() {
    return BoxConstraints.tight(Size(size.w, size.w));
  }
}
