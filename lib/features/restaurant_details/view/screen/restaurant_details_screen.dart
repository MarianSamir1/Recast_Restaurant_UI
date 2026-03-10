import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recast_restaurant_ui/core/git_it/dependecy_injection.dart';
import 'package:recast_restaurant_ui/core/widgets/app_sheard_widgets/screen_header.dart';
import 'package:recast_restaurant_ui/core/widgets/base_scaffold/base_scaffold.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/restaurant_atmosphere_section.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/restaurant_description_section.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/restaurant_food_menu_section.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view_model/cubit.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view_model/state.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RestaurantDetailsCubit>()..getRestaurantData(),
      child: BaseScaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //==================== restaurant Header Section ====================
              BlocBuilder<RestaurantDetailsCubit, RestaurantState>(
                buildWhen: (previous, current) =>
                    previous.restaurant != current.restaurant,
                builder: (context, state) => ScreenHeader(
                  imagePath: state.restaurant!.image,
                  showProfileIcon: true,
                ),
              ),
              //==================== restaurant Description Section ===============
              const RestaurantDescriptionSection(),
              //==================== AtmosphereSection ============================
              const RestaurantAtmosphereSection(),
              //==================== Food Menu Section ============================
              const RestaurantFoodMenuSection(),
            ],
          ),
        ),
      ),
    );
  }
}
