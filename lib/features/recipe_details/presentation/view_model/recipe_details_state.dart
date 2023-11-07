part of 'recipe_details_cubit.dart';

@immutable
abstract class RecipeDetailsState {}

class RecipeDetailsInitial extends RecipeDetailsState {}
class RecipeDetailsLoading extends RecipeDetailsState {}
class RecipeDetailsSuccess extends RecipeDetailsState {
  final RecipeModel meals;

  RecipeDetailsSuccess(this.meals);
}
class RecipeDetailsFailure extends RecipeDetailsState {
  final String errorMessage;
  RecipeDetailsFailure(this.errorMessage);
}

