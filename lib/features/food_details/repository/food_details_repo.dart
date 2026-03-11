import 'package:recast_restaurant_ui/features/food_details/model/food_details_model.dart';

abstract class FoodDetailsRepository {
  Future<FoodDetailsModel> getFoodDetails(String id);
}
