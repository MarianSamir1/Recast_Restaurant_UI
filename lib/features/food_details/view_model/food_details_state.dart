import 'package:equatable/equatable.dart';
import 'package:recast_restaurant_ui/features/food_details/model/food_details_model.dart';

class FoodDetailsState extends Equatable {
  final FoodDetailsModel? foodDetails;

  const FoodDetailsState({this.foodDetails});

  FoodDetailsState copyWith({FoodDetailsModel? foodDetails}) {
    return FoodDetailsState(foodDetails: foodDetails ?? this.foodDetails);
  }

  @override
  List<Object?> get props => [foodDetails];
}
