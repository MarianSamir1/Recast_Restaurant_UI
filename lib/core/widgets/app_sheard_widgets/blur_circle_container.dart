import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlurCircleContainer extends StatelessWidget {
  final Widget child;
  final bool isCircle;
  final EdgeInsetsGeometry? padding;

  const BlurCircleContainer({
    super.key,
    required this.child,
    this.isCircle = true,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: padding ?? EdgeInsets.all(8.r),
          decoration: BoxDecoration(
            shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
            color: Colors.black.withValues(alpha: 0.40),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.40),
              width: .5,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}