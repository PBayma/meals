import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  MealItem(this.meal);

  void _selectedMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.all(10),
        elevation: 4,
        color: Theme.of(context).accentColor,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      onTap: () => _selectedMeal(),
    );
  }
}
