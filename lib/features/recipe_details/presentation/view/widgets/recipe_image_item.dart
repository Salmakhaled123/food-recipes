import 'package:flutter/material.dart';
import 'package:foodrecipes/features/recipe_details/data/model/Meals.dart';
class RecipeImageItem extends StatelessWidget {
  const RecipeImageItem({
    super.key, required this.model,
  });
  final RecipeModel model;

  @override
  Widget build(BuildContext context) {
    return Image.network(width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height*0.25 ,
        fit: BoxFit.fill,
        '${model.strMealThumb}');
  }
}
