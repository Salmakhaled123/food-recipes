part of 'food_categories_cubit.dart';

@immutable
abstract class FoodCategoriesState {}

class FoodCategoriesInitial extends FoodCategoriesState {}
class FoodCategoriesLoading extends FoodCategoriesState {}
class FoodCategoriesSuccess extends FoodCategoriesState {
  final List<Categories> foodCategories;
  FoodCategoriesSuccess(this.foodCategories);
}
class FoodCategoriesFailure extends FoodCategoriesState {
  final String errorMessage;
  FoodCategoriesFailure(this.errorMessage);
}
