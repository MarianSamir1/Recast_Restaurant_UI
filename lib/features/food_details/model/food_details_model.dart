class FoodDetailsModel {
  final String id;
  final String title;
  final String category;
  final String description;
  final String image;
  final int preparationMinutes;
  final int servingSize;
  final double price;

  const FoodDetailsModel({
    required this.id,
    required this.title,
    required this.category,
    required this.description,
    required this.image,
    required this.preparationMinutes,
    required this.servingSize,
    required this.price,
  });
}
