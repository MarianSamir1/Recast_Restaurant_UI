import 'package:flutter/material.dart';
import 'package:recast_restaurant_ui/core/routing/routes.dart';
import 'package:recast_restaurant_ui/features/food_details/view/screen/food_details_screen.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/screen/restaurant_details_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      //=========== restaurant details screen route ===========//
      case Routes.restaurantScreen:
        return MaterialPageRoute(builder: (_) => RestaurantDetailsScreen());

      //=========== menue item details screen route ===========//
      case Routes.foodDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => FoodDetailsScreen(foodId: arguments as String),
        );

      //=========== default route =============================//
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
