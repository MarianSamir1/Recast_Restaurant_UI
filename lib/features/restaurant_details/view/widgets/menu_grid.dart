import 'package:flutter/material.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/model/menu_item.dart';
import 'package:recast_restaurant_ui/features/restaurant_details/view/widgets/menu_card.dart';

class MenuGrid extends StatelessWidget {
  final List<MenuItem> items;

  const MenuGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (_, index) {
        return MenuCard(item: items[index]);
      },
    );
  }
}
