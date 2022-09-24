import 'package:flutter/material.dart';

import './screens/categories_screen.dart';
import './screens/categories_meals_screen.dart';
import './utils/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        // accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleSmall: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 15,
              ),
              titleMedium: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
              ),
              titleLarge: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
              ),
            ),
      ),
      // initialRoute: '/',
      routes: {
        AppRoutes.HOME: (context) => const CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) => const CategoriesMealsScreen(),
      },
    );
  }
}
