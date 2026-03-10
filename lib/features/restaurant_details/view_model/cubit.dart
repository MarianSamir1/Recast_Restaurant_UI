import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/repository/restaurant_repository.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view_model/state.dart';

class RestaurantDetailsCubit extends Cubit<RestaurantState> {
  final RestaurantRepository repository;

  RestaurantDetailsCubit(this.repository) : super(const RestaurantState());

  void getRestaurantData() {
    try {
      final restaurant = repository.getRestaurantData();
      log("Restaurant Data: ${restaurant.fname} ${restaurant.lname}");
      emit(state.copyWith(restaurant: restaurant));
    } catch (e) {
      log("Error When getRestaurantData: ${e.toString()}");
    }
  }
}
