import 'package:flutter/material.dart';

import 'product_model.dart';

final List<ProductModel> fruitsAndVegetables = [
  ProductModel(
    id: '1',
    title: 'Natural Red Apple',
    image:
        'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?auto=format&fit=crop&w=800&q=80',
    price: 4.99,
    quantity: 1,
    unit: 'kg',
    categoryId: '1',
    description:
        'Fresh natural red apples with a sweet and juicy taste. Perfect for a healthy snack or fresh juice.',
    rating: 4.8,
    reviews: 124,
    nutrition: {
      'Calories': '52 kcal',
      'Carbohydrates': '14 g',
      'Protein': '0.3 g',
      'Fat': '0.2 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    title: 'Bananas',
    image:
        'https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e?auto=format&fit=crop&w=800&q=80',
    price: 4.99,
    quantity: 7,
    unit: 'pcs',
    categoryId: '1',
    description:
        'Fresh ripe bananas with a naturally sweet flavor and soft texture.',
    rating: 4.7,
    reviews: 98,
    nutrition: {
      'Calories': '89 kcal',
      'Carbohydrates': '23 g',
      'Protein': '1.1 g',
      'Fat': '0.3 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '3',
    title: 'Fresh Carrots',
    image:
        'https://images.unsplash.com/photo-1445282768818-728615cc910a?auto=format&fit=crop&w=800&q=80',
    price: 3.49,
    quantity: 1,
    unit: 'kg',
    categoryId: '1',
    description:
        'Crunchy fresh carrots, carefully selected for everyday healthy meals.',
    rating: 4.6,
    reviews: 76,
    nutrition: {
      'Calories': '41 kcal',
      'Carbohydrates': '10 g',
      'Protein': '0.9 g',
      'Fat': '0.2 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '4',
    title: 'Bell Pepper Red',
    image:
        'https://images.unsplash.com/photo-1563565375-f3fdfdbefa83?auto=format&fit=crop&w=800&q=80',
    price: 5.99,
    quantity: 1,
    unit: 'kg',
    categoryId: '1',
    description:
        'Fresh red bell peppers with a crisp texture and delicious taste.',
    rating: 4.9,
    reviews: 145,
    nutrition: {
      'Calories': '31 kcal',
      'Carbohydrates': '6 g',
      'Protein': '1 g',
      'Fat': '0.3 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '5',
    title: 'Fresh Ginger',
    image:
        'https://images.unsplash.com/photo-1615485290382-441e4d049cb5?auto=format&fit=crop&w=800&q=80',
    price: 6.50,
    quantity: 250,
    unit: 'g',
    categoryId: '1',
    description:
        'Fresh ginger root with a strong natural flavor, perfect for cooking and drinks.',
    rating: 4.5,
    reviews: 65,
    nutrition: {
      'Calories': '80 kcal',
      'Carbohydrates': '18 g',
      'Protein': '1.8 g',
      'Fat': '0.8 g',
    },
    heroTag: UniqueKey().toString(),
  ),
];

final List<ProductModel> cookingProducts = [
  ProductModel(
    id: '1',
    title: 'Extra Virgin Olive Oil',
    image:
        'https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?auto=format&fit=crop&w=800&q=80',
    price: 12.99,
    quantity: 1,
    unit: 'L',
    categoryId: '2',
    description:
        'Premium extra virgin olive oil suitable for cooking, salads and dressings.',
    rating: 4.8,
    reviews: 89,
    nutrition: {
      'Calories': '884 kcal',
      'Fat': '100 g',
      'Protein': '0 g',
      'Carbohydrates': '0 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    title: 'Sunflower Oil',
    image:
        'https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?auto=format&fit=crop&w=800&q=80',
    price: 8.99,
    quantity: 1,
    unit: 'L',
    categoryId: '2',
    description: 'Light sunflower cooking oil for everyday meals.',
    rating: 4.5,
    reviews: 54,
    nutrition: {
      'Calories': '884 kcal',
      'Fat': '100 g',
      'Protein': '0 g',
      'Carbohydrates': '0 g',
    },
    heroTag: UniqueKey().toString(),
  ),
];

final List<ProductModel> meatAndFishProducts = [
  ProductModel(
    id: '1',
    title: 'Fresh Chicken Breast',
    image:
        'https://images.unsplash.com/photo-1604503468506-a8da13d82791?auto=format&fit=crop&w=800&q=80',
    price: 14.99,
    quantity: 500,
    unit: 'g',
    categoryId: '3',
    description:
        'Fresh tender chicken breast, perfect for grilling and healthy meals.',
    rating: 4.8,
    reviews: 102,
    nutrition: {
      'Calories': '165 kcal',
      'Protein': '31 g',
      'Fat': '3.6 g',
      'Carbohydrates': '0 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    title: 'Fresh Salmon',
    image:
        'https://images.unsplash.com/photo-1467003909585-2f8a72700288?auto=format&fit=crop&w=800&q=80',
    price: 19.99,
    quantity: 500,
    unit: 'g',
    categoryId: '3',
    description: 'Fresh premium salmon with a rich flavor and tender texture.',
    rating: 4.9,
    reviews: 87,
    nutrition: {
      'Calories': '208 kcal',
      'Protein': '20 g',
      'Fat': '13 g',
      'Carbohydrates': '0 g',
    },
    heroTag: UniqueKey().toString(),
  ),
];

final List<ProductModel> bakeryAndSnacksProducts = [
  ProductModel(
    id: '1',
    title: 'Fresh Bread',
    image:
        'https://images.unsplash.com/photo-1509440159596-0249088772ff?auto=format&fit=crop&w=800&q=80',
    price: 2.99,
    quantity: 500,
    unit: 'g',
    categoryId: '4',
    description: 'Freshly baked soft bread with a delicious golden crust.',
    rating: 4.7,
    reviews: 71,
    nutrition: {
      'Calories': '265 kcal',
      'Protein': '9 g',
      'Fat': '3.2 g',
      'Carbohydrates': '49 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    title: 'Potato Chips',
    image:
        'https://images.unsplash.com/photo-1566478989037-eec170784d0b?auto=format&fit=crop&w=800&q=80',
    price: 3.99,
    quantity: 150,
    unit: 'g',
    categoryId: '4',
    description: 'Crispy golden potato chips with a delicious crunchy texture.',
    rating: 4.4,
    reviews: 62,
    nutrition: {
      'Calories': '536 kcal',
      'Protein': '7 g',
      'Fat': '35 g',
      'Carbohydrates': '53 g',
    },
    heroTag: UniqueKey().toString(),
  ),
];

final List<ProductModel> dairyAndEggsProducts = [
  ProductModel(
    id: '1',
    title: 'Fresh Milk',
    image:
        'https://images.unsplash.com/photo-1550583724-b2692b85b150?auto=format&fit=crop&w=800&q=80',
    price: 3.99,
    quantity: 1,
    unit: 'L',
    categoryId: '5',
    description:
        'Fresh creamy milk suitable for breakfast, coffee and cooking.',
    rating: 4.8,
    reviews: 113,
    nutrition: {
      'Calories': '61 kcal',
      'Protein': '3.2 g',
      'Fat': '3.3 g',
      'Carbohydrates': '4.8 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    title: 'Fresh Eggs',
    image:
        'https://images.unsplash.com/photo-1506976785307-8732e854ad03?auto=format&fit=crop&w=800&q=80',
    price: 6.99,
    quantity: 12,
    unit: 'pcs',
    categoryId: '5',
    description:
        'Farm fresh eggs, carefully selected for quality and freshness.',
    rating: 4.9,
    reviews: 134,
    nutrition: {
      'Calories': '143 kcal',
      'Protein': '13 g',
      'Fat': '9.5 g',
      'Carbohydrates': '0.7 g',
    },
    heroTag: UniqueKey().toString(),
  ),
];

final List<ProductModel> beverageProducts = [
  ProductModel(
    id: '1',
    title: 'Diet Coke',
    image:
        'https://images.unsplash.com/photo-1629203849820-fdd70d49c38e?auto=format&fit=crop&w=800&q=80',
    price: 1.99,
    quantity: 355,
    unit: 'ml',
    categoryId: '6',
    description: 'Refreshing diet cola with a crisp and refreshing taste.',
    rating: 4.6,
    reviews: 90,
    nutrition: {
      'Calories': '0 kcal',
      'Sugar': '0 g',
      'Fat': '0 g',
      'Protein': '0 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '2',
    title: 'Sprite Can',
    image:
        'https://images.unsplash.com/photo-1622483767028-3f66f32aef97?auto=format&fit=crop&w=800&q=80',
    price: 1.50,
    quantity: 325,
    unit: 'ml',
    categoryId: '6',
    description: 'Refreshing lemon-lime sparkling drink served chilled.',
    rating: 4.5,
    reviews: 72,
    nutrition: {
      'Calories': '140 kcal',
      'Sugar': '38 g',
      'Fat': '0 g',
      'Protein': '0 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '3',
    title: 'Apple & Grape Juice',
    image:
        'https://images.unsplash.com/photo-1600271886742-f049cd451bba?auto=format&fit=crop&w=800&q=80',
    price: 15.99,
    quantity: 2,
    unit: 'L',
    categoryId: '6',
    description: 'Refreshing blend of sweet apple and grape juice.',
    rating: 4.7,
    reviews: 81,
    nutrition: {
      'Calories': '46 kcal',
      'Sugar': '10 g',
      'Fat': '0 g',
      'Protein': '0.1 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '4',
    title: 'Orange Juice',
    image:
        'https://images.unsplash.com/photo-1600271886742-f049cd451bba?auto=format&fit=crop&w=800&q=80',
    price: 15.99,
    quantity: 2,
    unit: 'L',
    categoryId: '6',
    description:
        'Fresh tasting orange juice packed with natural citrus flavor.',
    rating: 4.8,
    reviews: 110,
    nutrition: {
      'Calories': '45 kcal',
      'Sugar': '8.4 g',
      'Fat': '0.2 g',
      'Protein': '0.7 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '5',
    title: 'Coca Cola Can',
    image:
        'https://images.unsplash.com/photo-1554866585-cd94860890b7?auto=format&fit=crop&w=800&q=80',
    price: 4.99,
    quantity: 325,
    unit: 'ml',
    categoryId: '6',
    description: 'Classic sparkling cola drink served chilled.',
    rating: 4.6,
    reviews: 143,
    nutrition: {
      'Calories': '139 kcal',
      'Sugar': '35 g',
      'Fat': '0 g',
      'Protein': '0 g',
    },
    heroTag: UniqueKey().toString(),
  ),
  ProductModel(
    id: '6',
    title: 'Pepsi Can',
    image:
        'https://images.unsplash.com/photo-1629203849820-fdd70d49c38e?auto=format&fit=crop&w=800&q=80',
    price: 4.99,
    quantity: 330,
    unit: 'ml',
    categoryId: '6',
    description: 'Refreshing cola drink with a rich and balanced flavor.',
    rating: 4.5,
    reviews: 98,
    nutrition: {
      'Calories': '150 kcal',
      'Sugar': '41 g',
      'Fat': '0 g',
      'Protein': '0 g',
    },
    heroTag: UniqueKey().toString(),
  ),
];
final List<ProductModel> allProducts = [
  ...fruitsAndVegetables,
  ...cookingProducts,
  ...meatAndFishProducts,
  ...bakeryAndSnacksProducts,
  ...dairyAndEggsProducts,
  ...beverageProducts,
];
