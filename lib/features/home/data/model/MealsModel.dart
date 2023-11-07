import 'Meals.dart';

class MealsModel {
  MealsModel({
      this.meals,});

  MealsModel.fromJson(dynamic json) {
    if (json['meals'] != null) {
      meals = [];
      json['meals'].forEach((v) {
        meals?.add(Meals.fromJson(v));
      });
    }
  }
  List<Meals>? meals;


}