import 'package:recast_restaurant_ui/core/constants/images_paths.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/model/menu_item.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/model/resturant_model.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/repository/restaurant_repository.dart';

class RestaurantRepositoryImpl implements RestaurantRepository {
  const RestaurantRepositoryImpl();

  @override
  Future<RestaurantModel> getRestaurantData() async {
    return RestaurantModel(
      name: "CEANO",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      image: ImagesPaths.restaurant,
      atmosphereImagesList: [ImagesPaths.atmosphere1, ImagesPaths.atmosphere2],
      menu: [
        MenuItem(
          id: "1",
          title: "Tenderloin Steak with Grilled Vegetables",
          image: ImagesPaths.menu1,
          price: 40.95,
          trending: true,
        ),
        MenuItem(
          id: "2",
          title: "25 Piece Sushi Boat with Three SIdes",
          image: ImagesPaths.menu2,
          price: 35.95,
          trending: false,
        ),
        MenuItem(
          id: "3",
          title: "Shared Meal and Drinks",
          image: ImagesPaths.menu3,
          price: 49.95,
          trending: false,
        ),

        MenuItem(
          id: "4",
          title: "25 Piece Sushi Boat with Three SIdes",
          image: ImagesPaths.menu4,
          price: 15.95,
          trending: false,
        ),
      ],
    );
  }
}
