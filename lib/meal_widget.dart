import 'package:flutter/material.dart';
import 'package:flutter_application_2/meal_model.dart';

class MealWidget extends StatelessWidget {
  MealModel mealModel;
  MealWidget(this.mealModel);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Image.network(mealModel.image ?? ''),
        Text(mealModel.name ?? ''),
        Text(mealModel.price ?? ''),
        ...mealModel.content?.map((e) {
              return Text(e.name ?? '');
            }).toList() ??
            []
      ],
    );
  }
}
