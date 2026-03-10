import 'package:equatable/equatable.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/model/resturant_model.dart';

class RestaurantState extends Equatable {
  final RestaurantModel? restaurant;
  const RestaurantState({this.restaurant});

  RestaurantState copyWith({RestaurantModel? restaurant}) {
    return RestaurantState(restaurant: restaurant ?? this.restaurant);
  }

  @override
  List<Object?> get props => [restaurant];
}
