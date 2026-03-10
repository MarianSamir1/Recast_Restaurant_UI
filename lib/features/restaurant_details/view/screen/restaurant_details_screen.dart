import 'package:flutter/material.dart';
import 'package:recast_restaurant_ui/core/widgets/base_scaffold/base_scaffold.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/restaurant_atmosphere_section.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/restaurant_description_section.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/restaurant_food_menu_section.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/restaurant_header_section.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //==================== restaurant Header Section ====================
            RestaurantHeaderSection(),
            //==================== restaurant Description Section ===============
            RestaurantDescriptionSection(),
            //==================== AtmosphereSection ============================
            RestaurantAtmosphereSection(),
            //==================== Food Menu Section ============================
            RestaurantFoodMenuSection()
          ],
        ),
      ),
    );
  }
}
