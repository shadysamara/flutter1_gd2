import 'package:flutter/material.dart';
import 'package:flutter_application_2/meal_model.dart';
import 'package:flutter_application_2/meal_widget.dart';
import 'package:flutter_application_2/meals_data.dart';

class ResurantScreen extends StatelessWidget {
  // function 1
  List<MealModel> mealsMapToMealsModelConverter() {
    return mealsData.map((e) => MealModel(e)).toList();
  }

  // function 2
  List<Widget> mealsModelToWidgetConverter() {
    //1 convert the list<map> to list<MealModel>
    List<MealModel> mealModels = mealsMapToMealsModelConverter();

    // 2 convert list<MealModel> to list<Widget>
    List<Widget> mealsWidgets = mealModels.map((e) => MealWidget(e)).toList();
    return mealsWidgets;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Iug Resturant"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: mealsModelToWidgetConverter(),
        ),
      ),
    );
  }
}
