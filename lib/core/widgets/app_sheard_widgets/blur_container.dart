import 'dart:ui';
import 'package:flutter/material.dart';

abstract class BlurContainer extends StatelessWidget {
  final Widget child;
  final Color blurColor;
  final Color borderColor;

  const BlurContainer({
    super.key,
    required this.child,
    required this.blurColor,
    required this.borderColor,
  });

  //==================== abstract methods ====================
  BoxDecoration buildDecoration();
  Widget buildClip(Widget child);
  BoxConstraints? buildConstraints();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: buildConstraints(),
      decoration: buildDecoration(),
      child: buildClip(
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            alignment: Alignment.center,
            color: blurColor,
            child: child,
          ),
        ),
      ),
    );
  }
}
