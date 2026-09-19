class ProductModel {
  final String image;
  final String title;
  final String id;
  final double price;
  final double quantity;
  final String unit;
  final String categoryId;
  final String description;
  final double rating;
  final int reviews;
  final String heroTag;
  final Map<String, String> nutrition;
  bool isFavourite;

  ProductModel({
    required this.image,
    required this.title,
    required this.id,
    required this.price,
    required this.quantity,
    required this.unit,
    required this.categoryId,
    required this.description,
    required this.rating,
    required this.reviews,
    required this.nutrition,
    required this.heroTag,
    this.isFavourite = false,
  });
}
