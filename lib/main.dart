import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(70, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(70, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
     initialRoute: '/',
      routes: {
        '/': (ctx)  => TabsScreen(),
        '/category-meal': (ctx) => CategoryMealsScreen(),
        FiltersScreen.routedName: (ctx) => FiltersScreen(),
        MealDetailScreen.routedName : (ctx) => MealDetailScreen(),
      },
    );
  }
}
