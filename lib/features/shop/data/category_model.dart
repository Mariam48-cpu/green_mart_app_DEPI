import 'dummy_data.dart';
import 'product_model.dart';

class CategoryModel {
  final String id;
  final String name;
  final String image;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.image,
  });
}

final List<CategoryModel> categoriesList = [
  CategoryModel(
    id: '1',
    name: 'Fruits & Vegetables',
    image: 'assets/images/category1.png',
  ),
  CategoryModel(
    id: '2',
    name: 'Cooking Oil',
    image: 'assets/images/category3.png',
  ),
  CategoryModel(
    id: '3',
    name: 'Meat & Fish',
    image: 'assets/images/category2.png',
  ),
  CategoryModel(
    id: '4',
    name: 'Bakery & Snacks',
    image: 'assets/images/category5.png',
  ),
  CategoryModel(
    id: '5',
    name: 'Dairy & Eggs',
    image: 'assets/images/category6.png',
  ),
  CategoryModel(
    id: '6',
    name: 'Beverages',
    image: 'assets/images/category4.png',
  ),
];



List<ProductModel> getProductsByCategory(String categoryId) {
  return allProducts
      .where((product) => product.categoryId == categoryId)
      .toList();
}
