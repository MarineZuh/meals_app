import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {

  static const routedName = '/meal-detail';

  const MealDetailScreen();

  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final mealId = routeArgs['id'];

    return Scaffold(
      appBar: AppBar(title: Text(mealId),),
      body: Text(mealId),
    );
  }
}