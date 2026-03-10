import 'package:recast_restaurant_ui/features/restaurant_details/model/resturant_model.dart';

abstract class RestaurantRepository {
  Future<RestaurantModel> getRestaurantData();
}