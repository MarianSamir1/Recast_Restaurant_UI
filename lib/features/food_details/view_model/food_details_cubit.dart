import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recast_restaurant_ui/features/food_details/repository/food_details_repo.dart';
import 'food_details_state.dart';

class FoodDetailsCubit extends Cubit<FoodDetailsState> {
  final FoodDetailsRepository foodDetailsRepository;

  FoodDetailsCubit(this.foodDetailsRepository)
    : super(const FoodDetailsState());

  void getFoodDetails(String id) {
    try {
      final food = foodDetailsRepository.getFoodDetails(id);
      log("Restaurant Data: ${food.id} ${food.title}");
      emit(state.copyWith(foodDetails: food));
    } catch (e) {
      log("Error When getFoodDetails: ${e.toString()}");
    }
  }
}
