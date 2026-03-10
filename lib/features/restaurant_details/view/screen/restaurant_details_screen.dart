import 'package:flutter/material.dart';
import 'package:recast_restaurant_ui/core/widgets/base_scaffold/base_scaffold.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  const RestaurantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //==================== restaurant Header Section ====================
            //==================== restaurant Description Section ===============
            //==================== AtmosphereSection ============================
            //==================== Food Menu Section ============================
        ],
      )),
    );
  }
}
