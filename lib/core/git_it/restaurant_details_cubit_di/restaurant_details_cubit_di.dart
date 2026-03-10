import 'package:recast_restaurant_ui/core/git_it/dependecy_injection.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/repository/restaurant_repository.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/repository/restaurant_repository_impl.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view_model/cubit.dart';

void restaurantDetailsCubitDi() {
  //===================== Restaurant Details Cubit Di=======================
  getIt.registerLazySingleton<RestaurantRepository>(
    () => RestaurantRepositoryImpl(),
  );
  getIt.registerFactory<RestaurantDetailsCubit>(
    () => RestaurantDetailsCubit(getIt<RestaurantRepository>()),
  );
}
