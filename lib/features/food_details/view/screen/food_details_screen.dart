import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recast_restaurant_ui/core/git_it/dependecy_injection.dart';
import 'package:recast_restaurant_ui/core/helper/navigation_extensions.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/screen_header.dart';
import 'package:recast_restaurant_ui/core/widgets/base_scaffold/base_scaffold.dart';
import 'package:recast_restaurant_ui/features/food_details/view/widgets/add_to_order_bottom_nav_bar.dart';
import 'package:recast_restaurant_ui/features/food_details/view/widgets/food_info_header.dart';
import 'package:recast_restaurant_ui/features/food_details/view/widgets/preparation_section.dart';
import 'package:recast_restaurant_ui/features/food_details/view_model/food_details_cubit.dart';
import 'package:recast_restaurant_ui/features/food_details/view_model/food_details_state.dart';

class FoodDetailsScreen extends StatelessWidget {
  final String foodId;
  const FoodDetailsScreen({super.key, required this.foodId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FoodDetailsCubit>()..getFoodDetails(foodId),
      child: BaseScaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //==================== image and appbar header ====================
              BlocBuilder<FoodDetailsCubit, FoodDetailsState>(
                buildWhen: (previous, current) =>
                    previous.foodDetails != current.foodDetails,
                builder: (context, state) => ImageHeaderWithAppBar(
                  imagePath: state.foodDetails!.image,
                  showProfileIcon: false,
                  onbackFun: context.pop,
                ),
              ),
              //================== info section ================================
              const FoodInfoHeader(),
              //==================== Preparation Section ============================
              const PreparationSection(),
            ],
          ),
        ),
        //==================== Total price and add to order bottom nav bar ============================
        bottomNavBar: const AddToOrderBottomNavBar(),
      ),
    );
  }
}
