import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetaisScreen extends StatelessWidget {
  const MealDetaisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: const Center(
        child: Text('Detalhes da refeição'),
      ),
    );
  }
}
