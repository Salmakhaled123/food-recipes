import 'package:dartz/dartz.dart';
import 'package:foodrecipes/core/errors/failure.dart';
import 'package:foodrecipes/features/recipe_details/data/model/Meals.dart';
abstract class RecipeDetailsRepo{
  Future<Either<Failure,RecipeModel>>showRecipeDetails(String recipeId);
}