import 'package:flutter/material.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavBar;
  final Color? backGroundColor;

  const BaseScaffold({
    required this.body,
    this.appBar,
    this.bottomNavBar,
    this.backGroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor ?? ColorManager.black,
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavBar,
    );
  }
}
