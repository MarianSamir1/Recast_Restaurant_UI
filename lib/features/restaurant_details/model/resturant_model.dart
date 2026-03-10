import 'package:recast_restaurant_ui/features/restaurant_details/model/menu_item.dart';

class RestaurantModel {
  final String fname;
  final String lname;
  final String description;
  final String image;
  final List<String> atmosphereImagesList;
  final List<MenuItem> menu;

  const RestaurantModel({
    required this.fname,
    required this.lname,
    required this.description,
    required this.image,
    required this.atmosphereImagesList,
    required this.menu,
  });
}
