import 'package:equatable/equatable.dart';
import 'package:recast_restaurant_ui/features/food_details/model/food_details_model.dart';

class FoodDetailsState extends Equatable {
  final bool isLoading;
  final FoodDetailsModel? food;

  const FoodDetailsState({
    this.isLoading = false,
    this.food,
  });

  FoodDetailsState copyWith({
    bool? isLoading,
    FoodDetailsModel? food,
  }) {
    return FoodDetailsState(
      isLoading: isLoading ?? this.isLoading,
      food: food ?? this.food,
    );
  }

  @override
  List<Object?> get props => [isLoading, food];
}