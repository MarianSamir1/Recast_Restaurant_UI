import 'package:recast_restaurant_ui/features/food_details/model/food_details_model.dart';
import 'package:recast_restaurant_ui/features/food_details/repository/food_details_repo.dart';
import '../../../../core/constants/images_paths.dart';

class FoodDetailsRepoImp implements FoodDetailsRepository {
  FoodDetailsRepoImp();
  @override
  FoodDetailsModel getFoodDetails(String id) {
    final Map<String, FoodDetailsModel> foodDetailsData = {
      "1": FoodDetailsModel(
        id: "1",
        title: "Tenderloin Steak with Grilled Vegetables & Fries",
        category: "Main Course",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n"
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        image: ImagesPaths.menu1,
        price: 40.95,
        preparationMinutes: 20,
        servingSize: 1,
      ),
      "2": FoodDetailsModel(
        id: "2",
        title: "25 Piece Sushi Boat with Three Sides",
        category: "Main Course",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        image: ImagesPaths.menu2,
        price: 35.95,
        preparationMinutes: 25,
        servingSize: 2,
      ),
      "3": FoodDetailsModel(
        id: "3",
        title: "Shared Meal and Drinks",
        category: "Drinks",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        image: ImagesPaths.menu3,
        price: 49.95,
        preparationMinutes: 15,
        servingSize: 3,
      ),
      "4": FoodDetailsModel(
        id: "4",
        title: "Sushi Boat Deluxe",
        category: "Appetizer",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        image: ImagesPaths.menu4,
        price: 15.95,
        preparationMinutes: 30,
        servingSize: 1,
      ),
    };

    return foodDetailsData[id]!;
  }
}
