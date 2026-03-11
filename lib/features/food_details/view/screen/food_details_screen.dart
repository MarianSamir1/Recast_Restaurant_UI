import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recast_restaurant_ui/core/constants/images_paths.dart';
import 'package:recast_restaurant_ui/core/helper/navigation_extensions.dart';
import 'package:recast_restaurant_ui/core/styles/colors.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/info_header.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/screen_header.dart';
import 'package:recast_restaurant_ui/core/widgets/base_scaffold/base_scaffold.dart';
import 'package:recast_restaurant_ui/features/food_details/view/widgets/add_to_order_bottom_nav_bar.dart';
import 'package:recast_restaurant_ui/features/food_details/view/widgets/preparation_section.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //==================== image and appbar header ====================
            ImageHeaderWithAppBar(
              imagePath: ImagesPaths.menu1,
              showProfileIcon: false,
              onbackFun: context.pop,
            ),
            //================== info section ================================
            InfoHeader(
              title: "Main Course",
              gradientTitle: "Tenderloin Steak with Grilled Vegetables & Fries",
              gradientTitleFont: 17.sp,
              gradientTitleColors: LinearGradient(
                colors: [
                  ColorManager.primary,
                  ColorManager.secondary,
                  ColorManager.secondary,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n"
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              descriptionColor: ColorManager.white,
            ),
            //==================== Preparation Section ============================
            PreparationSection(),
          ],
        ),
      ),
      //==================== Total price and add to order bottom nav bar ============================
      bottomNavBar: AddToOrderBottomNavBar(),
    );
  }
}
