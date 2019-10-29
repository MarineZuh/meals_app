import 'package:flutter/material.dart';
import 'package:meals_app/dummy-data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: categoryMeal.length,
        itemBuilder: (ctx, index) {
          Meal meal = categoryMeal[index];
          return MealItem(
            title: meal.title,
            affordability: meal.affordability,
            complexity: meal.complexity,
            duration: meal.duration,
            imageUrl: meal.imageUrl,
          );
        },
      ),
    );
  }
}
