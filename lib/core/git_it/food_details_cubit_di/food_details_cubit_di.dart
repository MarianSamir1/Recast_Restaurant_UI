import 'package:recast_restaurant_ui/core/git_it/dependecy_injection.dart';
import 'package:recast_restaurant_ui/features/food_details/repository/food_details_repo.dart';
import 'package:recast_restaurant_ui/features/food_details/repository/food_details_repo_imp.dart';
import 'package:recast_restaurant_ui/features/food_details/view_model/food_details_cubit.dart';

void foodDetailsCubitDi() {
  //===================== Restaurant Details Cubit Di=======================
  getIt.registerLazySingleton<FoodDetailsRepository>(
    () => FoodDetailsRepoImp(),
  );
  getIt.registerFactory<FoodDetailsCubit>(
    () => FoodDetailsCubit(getIt<FoodDetailsRepository>()),
  );
}
